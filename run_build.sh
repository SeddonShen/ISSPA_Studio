index_html=$(cat ./web/.webpack/index.html)
replace_pattern='/*FOXGLOVE_STUDIO_DEFAULT_LAYOUT_PLACEHOLDER*/'
replace_value=$(cat ./isspa-layout.json)
echo "${index_html/"$replace_pattern"/$replace_value}" > ./web/.webpack/index.html

# Continue executing the CMD
exec "$@"
