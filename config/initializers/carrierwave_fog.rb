CarrierWave.configure do |config|
  config.fog_credentials = {
    :provider               => 'AWS',                       # required
    :aws_access_key_id      => ENV['S3_ACCESS_KEY'],        # required
    :aws_secret_access_key  => ENV['S3_SECRET_ACCESS_KEY'], # required
    :endpoint               => 'http://s3.amazonaws.com'    # optional, defaults to nil
  }
  config.fog_directory  = ENV['S3_BUCKET']                  # required
end
