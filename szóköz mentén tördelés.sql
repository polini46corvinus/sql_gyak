select  cim,
        charindex(' ',cim),
        left(cim,charindex(' ',cim))
        

        
from dvd