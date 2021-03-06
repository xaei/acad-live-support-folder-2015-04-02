(defun c:xref_repath()
	(command "._xref" "pathType" "*" "relative")
	(princ "RELATIVE!")
	
	(command "._xref" "Path" "13600_A-PLAN-GRID" "./../13600 MASTER SET/13600-A-PLAN-GRID.dwg")
	(command "._xref" "Path" "13600_A-PLAN-RCP-FLR-1" "./../13600 MASTER SET/13600-A-PLAN-RCP-FLR-1.dwg")
	(command "._xref" "Path" "13600_A-PLAN-RCP-FLR-2" "./../13600 MASTER SET/13600-A-PLAN-RCP-FLR-2.dwg")
	(command "._xref" "Path" "13600_A-PLAN-FLOOR-FLR-1" "./../13600 MASTER SET/13600-A-PLAN-FLOOR-FLR-1.dwg")
	(command "._xref" "Path" "13600_A-PLAN-FLOOR-FLR-2" "./../13600 MASTER SET/13600-A-PLAN-FLOOR-FLR-2.dwg")
	(command "._xref" "Path" "13600_A-PLAN-FLOOR-BOUNDARY" "./../13600 MASTER SET/13600-A-PLAN-FLOOR-BOUNDARY.dwg")
	(command "._xref" "Path" "13600_A-PLAN-LANDSCAPE" "./../13600 MASTER SET/13600-A-PLAN-LANDSCAPE.dwg")
	(command "._xref" "Path" "13600_A-PLAN-ROOF" "./../13600 MASTER SET/13600-A-PLAN-ROOF.dwg")
	(command "._xref" "Path" "13600_A-SITE" "./../13600 MASTER SET/13600-A-SITE.dwg")

)
(c:xref_repath)