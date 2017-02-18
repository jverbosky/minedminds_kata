pets = {"cat" => "meow", "pig" => "oink", "dog" => "bark"}
# pets_loud = {}

puts pets.key "oink"  # oink
puts pets["pig"]  # oink

pets.each do |animal, sound|
	puts "#The {animal} says #{sound.upcase}!"  # The cat says MEOW!
end

ex_grades = {:math => "80", :science => "70", :english => "60", :shop => "90"}

ex_grades[:english] = "85"
p ex_grades  # {:math=>"80", :science=>"70", :english=>"85", :shop=>"90"}

ex_grades.delete(:english)
p ex_grades  # {:math=>"80", :science=>"70", :shop=>"90"}

ex_grades[:english] = "85"
p ex_grades  # {:math=>"80", :science=>"70", :shop=>"90", :english=>"85"}

=begin
print pets.methods  # output:
[:<, :>, :<=, :>=, :==, :[], :[]=, :empty?, :eql?, :inspect, :length, :size, :each,
:to_hash, :to_proc, :to_a, :to_s, :dig, :hash, :to_h, :include?, :select, :reject,
:any?, :member?, :index, :replace, :clear, :delete, :fetch, :shift, :select!,
:keep_if, :values_at, :delete_if, :reject!, :assoc, :rassoc, :flatten, :default,
:rehash, :store, :default=, :default_proc, :default_proc=, :key, :each_value,
:each_key, :each_pair, :keys, :values, :fetch_values, :invert, :update, :merge!,
:merge, :has_key?, :has_value?, :key?, :value?, :compare_by_identity,
:compare_by_identity?, :find, :entries, :sort, :sort_by, :grep, :grep_v, :count,
:detect, :find_index, :find_all, :collect, :map, :flat_map, :collect_concat,
:inject, :reduce, :partition, :group_by, :first, :all?, :one?, :none?, :min, :max,
:minmax, :min_by, :max_by, :minmax_by, :each_with_index, :reverse_each, :each_entry,
:each_slice, :each_cons, :each_with_object, :zip, :take, :take_while, :drop,
:drop_while, :cycle, :chunk, :slice_before, :slice_after, :slice_when, :chunk_while,
:lazy, :instance_of?, :public_send, :instance_variable_get, :instance_variable_set,
:instance_variable_defined?, :remove_instance_variable, :private_methods, :kind_of?,
:instance_variables, :tap, :is_a?, :extend, :to_enum, :enum_for, :<=>, :===, :=~,
:!~, :respond_to?, :freeze, :display, :object_id, :send, :method, :public_method,
:singleton_method, :define_singleton_method, :nil?, :class, :singleton_class,
:clone, :dup, :itself, :taint, :tainted?, :untaint, :untrust, :trust, :untrusted?,
:methods, :protected_methods, :frozen?, :public_methods, :singleton_methods, :!,
:!=, :__send__, :equal?, :instance_eval, :instance_exec, :__id__]
=end


# create a hash of grades
# iterate through hash
# if grades are < 80, remove them

# grades = {:math => "98", :english => "75", :russian => "85", :physics => "70", :chemistry => "79"}

grades = {
	math: "98",
	english: "75",
	russian: "85",
	physics: "70",
	chemistry: "79"
}

# grades.each do |subject, score|
# 	score = score.to_i
# 	if score < 85
# 		grades.delete(subject)
# 	end
# end

grades.each { |subject, score| grades.delete(subject) if score.to_i < 85 }

p grades