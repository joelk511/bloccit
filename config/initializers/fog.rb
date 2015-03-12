CarrierWave.configure do |cofig|
	config.fog_credentials = {
		provider:             'AWS',
		aws_access_key_id:     ENV['AKIAJLJMPJ53UOVKQCBQ'],
		aws_secret_access_key: ENV['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']
	}
	config.fog_directory = ENV['joelkaplanbloccitdevelopment']
	config.fog_public    = true
end