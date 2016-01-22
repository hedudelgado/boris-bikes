require 'Bike'
describe Bike do
	it {is_expected.to respond_to :working?}
  
end

describe Bike do
        it {is_expected.to respond_to :report_broken}
end

describe Bike do
	it {is_expected.to respond_to :broken?}
end

# describe Bike do   I have to work on this to make it work!
# 	bike = Bike.new
# 	bike.report_broken
# 	it 'return true when after setting the bike as broken check if it is broken' do
# 	expect { bike.broken?}.to eq true 
# 	end
# end
