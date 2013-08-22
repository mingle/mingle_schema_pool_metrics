require "rubygems"
require "bundler/setup"

Bundler.setup

require "aws"
require "librato/metrics"

def get_env(key_name)
  var_name = key_name.to_s.upcase
  ENV[var_name] || raise("missing #{var_name} environment variable!")
end

puts "AWS Region is required. Using: #{get_env(:aws_region)}"

sqs = AWS::SQS.new(
  :access_key_id => get_env(:aws_access_key_id),
  :secret_access_key => get_env(:aws_secret_access_key)
)

queue = sqs.queues.create get_env(:schema_pool_queue)

value = queue.visible_messages
puts "Schema pool size at #{Time.now}: #{value}"

Librato::Metrics.authenticate(get_env(:librato_username), get_env(:librato_api_key))
Librato::Metrics.submit :"mingle.schema-pool.size" => value
