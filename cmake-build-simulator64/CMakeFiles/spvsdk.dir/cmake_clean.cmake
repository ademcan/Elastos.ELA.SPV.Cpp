file(REMOVE_RECURSE
  "libspvsdk.pdb"
  "libspvsdk.a"
)

# Per-language clean rules from dependency scanning.
foreach(lang C CXX)
  include(CMakeFiles/spvsdk.dir/cmake_clean_${lang}.cmake OPTIONAL)
endforeach()
