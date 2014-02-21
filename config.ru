#\ -s puma
$LOAD_PATH.unshift(File.dirname(__FILE__))
$LOAD_PATH.unshift(File.dirname(__FILE__) + '/app') unless $LOAD_PATH.include?(File.dirname(__FILE__) + '/app')
$LOAD_PATH.unshift(File.dirname(__FILE__) + '/lib') unless $LOAD_PATH.include?(File.dirname(__FILE__) + '/lib')
$:.push(File.dirname(__FILE__))

$stdout.sync = true
require 'app/camdens_world'
run App