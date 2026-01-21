SELECT pages.page_id
From Pages 
Left Join Page_likes on pages.page_id = page_likes.page_id
Group by page_id
Having count(page_likes.page_id) = '0'