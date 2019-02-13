module Scripts
    SNATCH_SCRIPT = ->(domain : String, path : String) {
        "wget #{domain} --recursive --page-requisites --adjust-extension --span-hosts --convert-links --restrict-file-names=windows --domains #{domain} --no-parent -P #{path};"
    }
end