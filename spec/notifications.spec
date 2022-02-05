require_relative '../lib/notification'

describe Notification do
  let(:rand_pun) { Notification.new }
  context '#more' do
    it 'Is a random string' do
      expect(rand_pun.puns.class).to eql(String)
    end

    it 'random number not given' do
      expect(@random_puns).to be_nil
    end

    it 'quote not given' do
      expect(rand_pun.puns).not_to include('I dont exist in the random_jokes.')
    end
  end
end