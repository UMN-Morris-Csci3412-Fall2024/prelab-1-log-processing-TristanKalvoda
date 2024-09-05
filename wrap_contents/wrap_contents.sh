#!/bin/bash

wrap() {
    local fileName="$1"
    local headerFooterName="$2"
    local desiredName="$3"

    # get the header and footer files
    local header="${headerFooterName}_header.html"
    local footer="${headerFooterName}_footer.html"

    # create the desired file
    cat "$header" "$fileName" "$footer" > "$desiredName"
    echo "Created $desiredName"
}
wrap "$@"