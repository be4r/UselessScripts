gggg=0; x=0; y=0;
window.addEventListener('mousemove', 
    function(e) {
        x = e.clientX;
        y = e.clientY;
    }
);
window.addEventListener('keypress', 
    function(e){
        k = 0; 
        if(gggg===1 && e.code == 'KeyQ') {
            document.elementFromPoint(x,y).style.display='none';
            gggg=0; 
            k = 1;
        } 
        if (gggg > 0 && e.code != 'KeyQ')
            gggg=0; 
        if (gggg >= 0 && !k && e.code == 'KeyQ') 
            gggg++;
        if (e.code == 'KeyW')
            gggg=-1;
    }
);
