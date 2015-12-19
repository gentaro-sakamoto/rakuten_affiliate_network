require "rubygems"
require "test/unit"
require "webmock/test_unit"
require 'pry'

$LOAD_PATH.unshift(File.dirname(__FILE__))
$LOAD_PATH.unshift(File.join(File.dirname(__FILE__), "..", "lib"))
require "linkshare_api"

LinkshareAPI.logger = Logger.new("/dev/null")
