class User < ApplicationRecord
    has_secure_password
    has_many :jobs
    has_many :applications
  end
  
  # app/models/job.rb
  class Job < ApplicationRecord
    belongs_to :user
    has_many :applications
  end
  
  # app/models/application.rb
  class Application < ApplicationRecord
    belongs_to :user
    belongs_to :job
  end
  