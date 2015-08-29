local tenis = {playerA={
    score=0
},playerB={
    score=0
}}

function tenis.playerA.get()
    if tenis.playerA.score == 0 then
        return "Love"
    end
    if tenis.playerA.score == 50 then
        return "Player A Win!"
    end
    return tenis.playerA.score .. ""
end

function tenis.playerB.get()
    if tenis.playerB.score == 0 then
        return "Love"
    end
    if tenis.playerB.score == 50 then
        return "Player B Win!"
    end
    return tenis.playerB.score .. ""
end


function tenis.score()
    if tenis.playerA.score >40 then
        return tenis.playerA.get()
    end
    if tenis.playerB.score >40 then
        return tenis.playerB.get()
    end
    return tenis.playerA.get().. "-"..tenis.playerB.get()
end

function tenis.start()
    tenis.playerA.score = 0
    tenis.playerB.score = 0
    return tenis.score()
end

function tenis.playerA.getScore()
    if tenis.playerA.score >= 30 then
        tenis.playerA.score = tenis.playerA.score+10
    else
        tenis.playerA.score = tenis.playerA.score+15
    end
    return tenis.score()
end

function tenis.playerB.getScore()
    if tenis.playerB.score >= 30 then
        tenis.playerB.score = tenis.playerB.score+10
    else
        tenis.playerB.score = tenis.playerB.score+15
    end
    return tenis.score()
end


return tenis
