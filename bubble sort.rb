def bubble_sort(array)		
	loop do
		changed = false
		(array.length-1).times do |i|	
			if array[i] > array[i+1] 				
				array[i], array[i+1] = array[i+1], array[i] 
				changed = true
			end	
		end
		break if not changed
	end
	array
end

def bubble_sort_by(array)		
	loop do
		changed = false
		(array.length-1).times do |i|	
			if yield(array[i], array[i+1]) > 0 				
				array[i], array[i+1] = array[i+1], array[i] 
				changed = true
			end	
		end
		break if not changed
	end
	array
end

bubble_sort_by(["hi","hello","hey"]) do |left,right|
	left.length - right.length
end
