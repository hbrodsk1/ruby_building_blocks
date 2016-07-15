require "ruby_building_blocks"

describe "cipher" do
	context "cipher is only one word" do
		it "returns coded word" do
			expect(cipher("abcd", 2)).to eq("yzab")
		end
	end

	context "cipher contains spaces" do
		it "returns coded words with spaces" do
			expect(cipher("poo oop", 2)).to eq("nmm mmn")
		end
	end

	context "cipher contains non-letter characters" do
		it "returns the non-letter characters" do
			expect(cipher("aaaaah?!", 1)).to eq("zzzzzg?!")
		end
	end

	context "cipher contains numbers" do
		it "returns numbers" do
			expect(cipher("hey321", 4)).to eq("dau321")
		end
	end

	context "cipher contains capital letters" do
		it "returns capital letters" do
			expect(cipher("bBcCDd", 3)).to eq("yYzZAa")
		end
	end
end