require 'json'
require 'pathname'
require "spider-src/version"

module Spider
  module Src
    class << self
      def spider_path
        @spider_path ||= ::Pathname.new(File.dirname(__FILE__)).join('spider-src/support/spider')
      end

      def js_path
        spider_path.join('cli.js')
      end

      def package_json_path
        spider_path.join('package.json')
      end

      def license_path
        spider_path.join('LICENSE')
      end

      def js_content
        js_path.read
      end

      def package_info
        JSON.parse(package_json_path.read)
      end

      def version
        package_info['version']
      end
    end
  end
end
