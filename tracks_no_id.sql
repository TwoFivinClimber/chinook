SELECT DISTINCT  A.Title as album_name, M.Name as media_type, G.Name as genre
  From Album A LEFT JOIN Track T ON A.AlbumId = T.AlbumId LEFT JOIN MediaType M on T.MediaTypeID = M.MediaTypeId LEFT JOIN Genre G on T.MediaTypeId = G.GenreId
  ORDER BY A.AlbumId
