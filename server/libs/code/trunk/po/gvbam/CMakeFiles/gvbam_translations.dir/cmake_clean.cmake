FILE(REMOVE_RECURSE
  "CMakeFiles/gvbam_translations"
  "ca_ES.gmo"
  "cs.gmo"
  "de.gmo"
  "en.gmo"
  "es_ES.gmo"
  "fr.gmo"
  "it_IT.gmo"
  "nb.gmo"
  "nl.gmo"
  "pl.gmo"
  "pt_BR.gmo"
  "sv.gmo"
  "zh_CN.gmo"
  "zh_TW.gmo"
)

# Per-language clean rules from dependency scanning.
FOREACH(lang)
  INCLUDE(CMakeFiles/gvbam_translations.dir/cmake_clean_${lang}.cmake OPTIONAL)
ENDFOREACH(lang)
