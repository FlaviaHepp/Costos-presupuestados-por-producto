USE AdventureWorks2019
GO

--Se requiere saber los costos presupuestados por producto

SELECT pp.ProductID, pp.Name, pwor.ActualCost AS Costo_real, pwor.PlannedCost AS Costo_planificado, (ActualCost - PlannedCost) AS Diferencia_costo
FROM Production.WorkOrderRouting pwor
INNER JOIN Production.Product pp
ON pwor.ProductID = pp.ProductID
ORDER BY ProductID