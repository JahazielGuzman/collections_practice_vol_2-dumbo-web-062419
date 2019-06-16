# your code goes here
def begins_with_r(warr)
	all_r = true
	warr.each do |elem|
		if elem[0].downcase != "r"
			all_r = false
			break
		end
	end
	all_r
end

def contain_a(warr)
	warr.select{|word| word.include? "a"}
end

def first_wa(warr)
	warr.find do |word|
		word.to_s[0..1] == "wa"
	end
end

def remove_non_strings(warr)
	warr.select{|wrd| wrd.class.to_s == "String"}
end

def count_elements(harr)
	carr = {}
	harr.each do |hash|
		if carr[hash[:name]] == nil
			carr[hash[:name]] = {}
			carr[hash[:name]][:name] = hash[:name]
			carr[hash[:name]][:count] = 0
		end
		carr[hash[:name]][:count] += 1
	end

	carr.values
end

def merge_data(h1, h2)
	h1.each do | elem|
		h2.each do |elem2|
			elem.merge!(elem2[elem[:first_name]])
		end
	end
	h1
end

def find_cool(cool)
	cool.select do |temp|
		temp[:temperature] == "cool"
	end
end

def organize_schools(schools)
	org = {}
	schools.each do |schl, loc|
		unless org.has_key?(loc[:location])
			org[loc[:location]] = []
		end
		org[loc[:location]] << schl
	end
	org
end