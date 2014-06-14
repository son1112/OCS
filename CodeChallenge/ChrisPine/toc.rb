line_width = 20
Width = 50

toc = [[1,'Getting Started',1],[2,'Numbers',9],[3,'Letters',13]]

puts
puts ('Table of Contents'.center(Width))
puts

toc.each do |column|

  chapter = column[0]
  title = column[1]
  page = column[2]

  chap_colWidth = nil
  title_colWidth = nil
  page_colWidth = 7

  chap_col = ('Chapter ' + chapter.to_s + ':   ')
  page_col = ('page '.ljust(page_colWidth - page.to_s.length) + page.to_s).rjust(Width - title.length)

  puts chap_col + title + page_col

end

puts



