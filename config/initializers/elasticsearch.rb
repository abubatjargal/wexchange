
require 'faraday_middleware/aws_signers_v4'

Searchkick.client = Elasticsearch::Client.new(url: ENV['AWS_ENDPOINT_URL']) do |f|
  f.request :aws_signers_v4,
            credentials: Aws::Credentials.new(ENV['AWS_ACCESS_KEY_ID'], ENV['AWS_SECRET_ACCESS_KEY']),
            service_name: 'es',
            region: ENV['AWS_REGION']
end