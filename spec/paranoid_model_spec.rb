require 'paranoid_model'

class ActiveRecordTestClass
  include ParanoidModel
end

describe ParanoidModel do

  describe 'instance methods' do
    %w[update_attribute destroy delete].each do |method_name|
      it "raises exception for :#{method_name}" do
        expect { ActiveRecordTestClass.new.send method_name }.to raise_error(ParanoidModel::ParanoidModelException)
      end
    end
  end

  describe 'class methods' do
    %w[update_all destroy_all delete_all].each do |method_name|
      it "raises exception for :#{method_name}" do
        expect { ActiveRecordTestClass.send method_name }.to raise_error(ParanoidModel::ParanoidModelException)
      end
    end
  end
end
