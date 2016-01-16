=begin

def bubble_sort(array)
	n = array.length

	loop do
		swapped = false
	
		(n-1).times do |i|
			if array[i] > array[i+1]
				array[i], array[i+1] = array[i+1], array[i]
				swapped = true
			end
		end

		break if not swapped
	end

	puts array.join(", ")
end

bubble_sort([4,3,78,2,0,2])

=end

def bubble_sort_by(array)
	n = array.length

	loop do
		swapped = false

		(n - 1).times do |i|
			if yield(array[i], array[i+1]) > 0
				array[i], array[i+1] = array[i+1], array[i]
				swapped = true
			end
		end

		break if not swapped
	end

	puts array.join(", ")
	
end

 bubble_sort_by(["hi","hello","hey"]) do |left,right|
	left.length - right.length
 end

