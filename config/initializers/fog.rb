CarrierWave.configure do |config|
  config.fog_credentials = {
    provider:               'AWS',
    aws_access_key_id:      ENV['AKIAJLJMPJ53UOVKQCBQ'],
    aws_secret_access_key:  ENV['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']
  }
  config.fog_directory  = ENV['AWS_BUCKET']
  config.fog_public     = true
end