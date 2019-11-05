#Rotate Matrix:
#  Given an image represented by an NxN matrix,
#  where each pixel in the image is 4 bytes,
#  write a method to rotate the image by 90 degrees.
#  Can you do this in place? 

def rotate_matrix(matrix)
  rows = matrix.length
  rows/2
  (rows/2).times do |layer|
#    
                 
  final = rows - layer - 1

    (layer..final-1).each do |i|
      offset = i - layer
      # save top
      top = matrix[layer][i]
      # left to top
      matrix[layer][i] = matrix[final - offset][layer]
      # bottom to left
      matrix[final - offset][layer] = matrix[final][final - offset]
      # right to bottom
      matrix[final][final - offset] = matrix[i][final]
      # top to right
      matrix[i][final] = top
    end
    
  end
  print matrix
  return matrix
end

rotate_matrix([[1,2,3,4],[5,6,7,8],[9,10,11,12],[13,14,15,16]])	
puts "JoanEC"