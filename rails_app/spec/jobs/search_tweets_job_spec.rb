require 'rails_helper'

RSpec.describe SearchTweetsJob, type: :job do
  it '#rodando job' do
   result =  SearchTweetsJob.perform_now
    
  end
end
