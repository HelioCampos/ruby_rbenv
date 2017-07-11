class Chef
  module Rbenv
    module PackageDeps
      def jruby_package_deps
        case node['platform_family']
        when 'debian'
          %w(make g++)
        when 'freebsd'
          %w( alsa-lib bash dejavu expat fixesproto fontconfig freetype2 gettext-runtime giflib indexinfo inputproto java-zoneinfo javavmwrapper kbproto libICE libSM libX11 libXau libXdmcp libXext libXfixes libXi libXrender libXt libXtst libfontenc libpthread-stubs libxcb libxml2 mkfontdir mkfontscale openjdk8 recordproto renderproto xextproto xproto )
        end
      end

      def package_deps
        case node['platform_family']
        when 'rhel', 'fedora', 'amazon'
          %w( gcc bzip2 openssl-devel libyaml-devel libffi-devel readline-devel zlib-devel gdbm-devel ncurses-devel )
        when 'debian'
          %w(gcc-6 autoconf bison build-essential libssl-dev libyaml-dev libreadline6-dev zlib1g-dev libncurses5-dev libffi-dev libgdbm3 libgdbm-dev)
        when 'suse'
          %(cc6 automake gdbm-devel libffi-devel libyaml-devel libopenssl-devel ncurses-devel readline-devel zlib-devel)
        end
      end

      def rbx_package_deps
        case node['platform_family']
        when 'rhel', 'fedora', 'amazon'
          %w( ncurses-devel llvm-static llvm-devel ) + cruby_package_deps
        when 'suse'
          %w( ncurses-devel ) + cruby_package_deps
        end
      end
    end
  end
end
