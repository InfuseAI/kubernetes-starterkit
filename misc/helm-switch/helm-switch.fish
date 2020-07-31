function helm-switch -d "Swith helm & helmfile between helm2 and helm3"

    switch $argv[1]
        case 2
            set_color green; echo "Switch to helm2"; set_color normal
            ln -nfs ~/bin/helm2 ~/bin/helm
            ln -nfs ~/bin/helmfile2 ~/bin/helmfile
        case 3
            set_color green; echo "Switch to helm3"; set_color normal
            ln -nfs ~/bin/helm3 ~/bin/helm
            ln -nfs ~/bin/helmfile3 ~/bin/helmfile
        case '*'
            set_color green; echo "Current helm version:"; set_color normal
            ~/bin/helm version
            helmfile -v
            set_color green; echo "Support helm version:"; set_color normal
            echo "(helm2 version --short -c)"
            echo "(helm3 version --short -c)"
            set_color green; echo "Support helmfile version:"; set_color normal
            echo "(helmfile2 -v)"
            echo "(helmfile3 -v)"
    end
end
