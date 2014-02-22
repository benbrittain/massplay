#include <set>
#include <websocketpp/config/asio_no_tls.hpp>
#include <websocketpp/server.hpp>

typedef websocketpp::server<websocketpp::config::asio> server;

using websocketpp::connection_hdl;
using websocketpp::lib::placeholders::_1;
using websocketpp::lib::placeholders::_2;
using websocketpp::lib::bind;

class broadcast_server {
  public:
    broadcast_server() {
      m_server.init_asio();

      m_server.set_open_handler(bind(&broadcast_server::on_open,this,::_1));
      m_server.set_close_handler(bind(&broadcast_server::on_close,this,::_1));
      m_server.set_message_handler(bind(&broadcast_server::on_message,this,::_1,::_2));
    }

    void on_open(connection_hdl hdl) {
      m_connections.insert(hdl);
    }

    void on_close(connection_hdl hdl) {
      m_connections.erase(hdl);

//      std::cout << "Closing connection " << data.name << " with sessionid " << data.sessionid << std::endl;
    }

    void on_message(connection_hdl hdl, server::message_ptr msg) {
      std::string data = msg->get_payload();
      std::cout << "payload: " << data << std::endl;
      for (auto it : m_connections) {
        m_server.send(it,msg);
      }
    }

    void run(uint16_t port) {
      m_server.listen(port);
      m_server.start_accept();
      m_server.run();
    }
  private:
    typedef std::set<connection_hdl,std::owner_less<connection_hdl>> con_list;

    server m_server;
    con_list m_connections;
};

int main(int arcg, char **argv) {
  char captureDir[2048];
  fprintf(stdout, "Initializing massplay server\n");

  // Initialize Server
  broadcast_server server;
  server.run(9002);

  // 
  while(true) {

  }
}
