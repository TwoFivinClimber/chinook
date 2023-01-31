SELECT p.Name, COUNT(TrackId) as "Tracks On Playlist"
FROM Playlist p LEFT JOIN PlaylistTrack t on p.PlaylistId = t.PlaylistId
GROUP BY p.PlaylistId
