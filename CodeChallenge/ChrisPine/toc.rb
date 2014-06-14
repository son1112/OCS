line_width = 20
page_colWidth = 7
tocWidth = 50

toc = [[1,'Getting Started',1],[2,'Numbers',9],[3,'Letters',13]]

puts
puts ('Table of Contents'.center(tocWidth))
puts

toc.each do |column|

  chapter = column[0].to_s
  title = column[1]
  page = column[2].to_s

  chap_col = ('Chapter ' + chapter + ':   ')
  page_left = (page_colWidth - page.length)
  page_right = (tocWidth - title.length)
  page_col = ('page '.ljust(page_left) + page).rjust(page_right)

  puts chap_col + title + page_col

end

puts



