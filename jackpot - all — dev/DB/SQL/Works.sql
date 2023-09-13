SELECT Clients.KodClient, Clients.FIO, Works.Data, Sum(Works.JackPot) AS [Sum-JackPot], Sum(Works.P) AS [Sum-P], Sum(Works.Payment) AS [Sum-Payment], Sum([Works]![JackPot]+[Works]![P]+[Works]![Payment]) AS Summa
FROM Clients INNER JOIN Works ON Clients.KodClient = Works.KodFIO
GROUP BY Clients.KodClient, Clients.FIO, Works.Data
ORDER BY Works.Data;
