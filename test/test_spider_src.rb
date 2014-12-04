require 'test/unit'
require 'spider-src'

class TestSpiderSrc < Test::Unit::TestCase
  def test_gem_version
    assert { Spider::Src::VERSION.kind_of?(String) }
  end

  def test_version
      assert { Spider::Src.version.kind_of?(String) }
    end

    def test_package_json_path
      assert { Spider::Src.package_json_path.file? }
    end

    def test_license_path
      assert { Spider::Src.license_path.file? }
    end

    def test_spider_path
      assert { Spider::Src.spider_path.directory? }
    end

    def test_js_path
      assert { Spider::Src.js_path.file? }
    end

    def test_js_content
      assert { Spider::Src.js_content.length > 0 }
    end
end

