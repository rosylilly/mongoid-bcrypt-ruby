require 'spec_helper'

describe BCrypt::Password do
  let(:origin) { 'test-password' }
  let(:password) { described_class.create(origin) }

  let(:mongoize) { described_class.mongoize(password) }

  describe '.mongoize' do
    subject { described_class.mongoize(password) }

    it { should be_a(String) }
  end

  describe '.demongoize' do
    subject { described_class.demongoize(mongoize) }

    it { should == origin }
  end

  describe '.evolve' do
    subject { described_class.evolve(password) }

    it { should be_a(String) }
  end

  describe '#mongoize' do
    subject { password.mongoize }

    it { should be_a(String) }
  end
end
