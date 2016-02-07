require 'pathname'
require 'vagrant-xhyve/plugin'

module VagrantPlugins
  module Xhyve
    lib_path = Pathname.new(File.expand_path('../vagrant-xhyve', __FILE__))
    autoload :Action, lib_path.join('action')
    autoload :Driver, lib_path.join('driver')
    autoload :DhcpdLeasesParser, lib_path.join('dhcpd_leases_parser')
    autoload :Errors, lib_path.join('errors')
    autoload :VmnetMac, lib_path.join('vmnet_mac')

    def self.source_root
      @source_root ||= Pathname.new(File.expand_path('../../', __FILE__))
    end
  end
end
