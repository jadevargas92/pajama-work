class Job < ActiveRecord::Base
	 mount_uploader :logo, LogoUploader
end
