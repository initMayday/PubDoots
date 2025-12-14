dangerousscraps() {
    for f in "$@"; do
        case "$f" in
            PKGBUILD)
                ;;
            *)
                rm -rf -- "$f"
                ;;
        esac
    done
}
