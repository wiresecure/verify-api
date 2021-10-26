#!/bin/bash

echo "Getting started"

# Bundle docs into zero-dependency HTML file
npx redoc-cli bundle openapi/openapi.yaml -t docs/index.html \
--options.theme.colors.primary.main=#3e7cec \
--options.theme.colors.secondary.main=#fbbe2f \
--options.theme.typography.fontFamily="nimbus-sans" \
--options.theme.typography.smoothing="antialiased" \
--options.theme.typography.headings.fontFamily="termina" \
&& \
mv redoc-static.html index.html && \
echo "Changed name from redoc-static.html to index.html..." 
echo -e "\nDone"