class Image
  def initialize(photo)
    @photo = photo
  end

  def get_ones(array)
    one = []
    array.each_with_index {}
      if x == 1 
        one << [row, col]
      end
  end 

  def blurs 
    @get_ones()
    loops 
    if image[x][y] == 1 

  image[x][x + 1 ] = 1
  image[x][1 -1 ] = 1
  image[1 + 1 ][1 ]
  end 


  def output_image
    @photo.each do |row|
      puts row.join
  end

end



image = Image.new(
[
  [0, 0, 0, 0],
  [0, 1, 0, 0],
  [0, 0, 0, 1],
  [0, 0, 0, 0]
])
image.output_image

end
