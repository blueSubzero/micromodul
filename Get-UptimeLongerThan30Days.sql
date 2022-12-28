SELECT     TOP (100) PERCENT dbo.v_R_System.Name0, dbo.v_GS_OPERATING_SYSTEM.LastBootUpTime0, DATEDIFF(Day,
                      dbo.v_GS_OPERATING_SYSTEM.LastBootUpTime0, GETDATE()) AS [Days since last boot], dbo.v_GS_OPERATING_SYSTEM.Caption0
FROM         dbo.v_GS_OPERATING_SYSTEM INNER JOIN
                      dbo.v_R_System ON dbo.v_GS_OPERATING_SYSTEM.ResourceID = dbo.v_R_System.ResourceID
WHERE     (DATEDIFF(Day, dbo.v_GS_OPERATING_SYSTEM.LastBootUpTime0, GETDATE()) > 30) 
ORDER BY [Days since last boot]