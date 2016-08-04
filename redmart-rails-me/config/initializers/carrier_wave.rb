if Rails.env.production?
  CarrierWave.configure do |config|
    config.fog_credentials = {
      # Configuration for Amazon S3
      :provider              => 'AWS',
      :aws_access_key_id     => ENV['guzmanfreyre'],
      :aws_secret_access_key => ENV['AKIAIE43CUUIS7S2XGOA']
    }
    config.fog_directory     =  ENV['OuOzoaXnnnKWLK2ki2GpXUBwlnNGBp/suO09jqLB']
  end
end
