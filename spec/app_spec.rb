require_relative 'spec_helper'

Fix.describe app do
  on :get, '/' do
    its(:status) { MUST Equal: 200 }

    on :headers do
      on :fetch, 'Content-Type' do
        it { MUST Match: /text\/html/ }
      end
    end
  end
end
