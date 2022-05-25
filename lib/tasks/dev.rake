if Rails.env.development? || Rails.env.test?
  require 'factory_bot'

  namespace :dev do
    desc 'Setup data to test and development'
    task prime: 'db:setup' do
      include FactoryBot::Syntax::Methods

      users = []
      30.times do
        users << create(:user)
      end

      60.times do
        user = users.sample
        finished = %i(true false).sample
        topic = create(:topic, user: user, finished: finished)
        create(:apprenticeship, user: user, topic: topic)
      end
    end
  end
end
