#!/usr/bin/env bash

npm install bootstrap
npm install jquery

cat <<EOF >index.php
<html>
<head>
    <title></title>
    <link rel="stylesheet" href="assets/styles/main.css">
    <link rel="stylesheet" href="node_modules/bootstrap/dist/css/bootstrap.min.css">
    <script type="text/javascript" src="assets/scripts/main.js"></script>
    <script type="text/javascript" src="node_modules/jquery/dist/jquery.min.js"></script>
    <script type="text/javascript" src="node_modules/bootstrap/dist/js/bootstrap.min.js"></script>
</head>
<body>

</body>
</html>
EOF

cat <<EOF >.gitignore
.idea
initWebproject.sh
node_modules
EOF

mkdir assets
cd assets

mkdir styles
mkdir scripts

cd styles
cat <<EOF >main.less
@import "less/sites";
@import "less/components";
@import "less/variables";
EOF

mkdir less
cd less
cat <<EOF >sites.less
@import "sites/index";
EOF

cat <<EOF >components.less
@import "components/header";
@import "components/footer";
EOF

cat <<EOF >variables.less
@import "variables/colors";
@import "variables/sizes";
@import "variables/fonts";
EOF

mkdir sites
mkdir components
mkdir variables

cd sites
cat <<EOF >index.less
body {
    background-color: @gray-darkest;
    color: @white;
}
EOF

cd ../components
cat <<EOF >header.less
.header {
    background-color: @blue-light;
    color: @black;
}
EOF

cat <<EOF >footer.less
.header {
    background-color: @white;
    color: @gray-darkest;
}
EOF

cd ../variables

cat <<EOF >colors.less
@black: #FFF;
@gray-darkest: #222;
@gray-darker: #333;
@gray-dark: #666;
@gray: #999;
@gray-light: #ccc;
@gray-lighter: #ddd;
@gray-lightest: #f6f6f6;
@white: #FFF;

@blue: #00F;
@blue-light: #00F;

EOF

cat <<EOF >fonts.less
@headline: "Arial Black", "Arial", sans-serif;
@text: "Arial", sans-serif;
EOF

cat <<EOF >sizes.less
@text-size: 16px;
@headline-size: 28px;
@subheadline-size: 22px;
EOF

cd ../../../scripts

cat <<EOF >main.js
\$(document).ready(function() {
    console.log("ready");
});
EOF

cd ../..
git add assets/* index.php .gitignore package-lock.json
