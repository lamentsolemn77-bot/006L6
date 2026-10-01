--=============================================================
--  >:D PAINEL 006L6 >:D  •  FINAL  •  UNIVERSAL OTIMIZADO
--=============================================================
local P=game:GetService("Players")
local U=game:GetService("UserInputService")
local RS=game:GetService("RunService")
local LG=game:GetService("Lighting")
local TS=game:GetService("TeleportService")
local SG=game:GetService("StarterGui")
local p=P.LocalPlayer
_G.C=_G.C or{A={},T=true}
local function h(x)x=x or p;local c=x.Character;return c and c:FindFirstChildOfClass("Humanoid")end
local function r(x)x=x or p;local c=x.Character;return c and c:FindFirstChild("HumanoidRootPart")end
local function ch(x)x=x or p;return x.Character end
local function al(x)
    if x==p then return false end
    if _G.C.T and x.Team and p.Team and x.Team==p.Team then return true end
    for _,n in ipairs(_G.C.A)do if x.Name==n then return true end end
    return false
end
local function GT(t)
    local o={}
    if t=="s"then o={p}
    elseif t=="a"then for _,x in ipairs(P:GetPlayers())do if al(x)then o[#o+1]=x end end
    elseif t=="e"then for _,x in ipairs(P:GetPlayers())do if x~=p and not al(x)then o[#o+1]=x end end
    elseif t=="all"then o=P:GetPlayers()
    elseif t=="n"then
        local rr=r()
        if rr then
            local b,d=nil,1e9
            for _,x in ipairs(P:GetPlayers())do
                if x~=p then
                    local pr=r(x)
                    if pr then
                        local m=(pr.Position-rr.Position).Magnitude
                        if m<d then d=m;b=x end
                    end
                end
            end
            if b then o={b}end
        end
    elseif t=="r"then
        local l={}
        for _,x in ipairs(P:GetPlayers())do if x~=p then l[#l+1]=x end end
        if #l>0 then o={l[math.random(#l)]}end
    end
    return o
end
local function fa(t,f)for _,x in ipairs(GT(t))do pcall(f,x)end end
local A={}
function A.HE(x)local hh=h(x)if hh then hh.Health=hh.MaxHealth end end
function A.KI(x)local hh=h(x)if hh then hh.Health=0 end end
function A.DA(x,n)local hh=h(x)if hh then hh:TakeDamage(n or 25)end end
function A.GO(x)local hh=h(x)if hh then hh.MaxHealth=1e15;hh.Health=1e15 end end
function A.HP(x,n)local hh=h(x)if hh then hh.MaxHealth=n or 500;hh.Health=n or 500 end end
function A.FR(x)local rr=r(x)if rr then rr.Anchored=true;task.delay(3,function()if rr and rr.Parent then rr.Anchored=false end end)end end
function A.FL(x)local rr=r(x)if rr then rr.Velocity=Vector3.new(math.random(-500,500),500,math.random(-500,500))end end
function A.SP(x,n)local hh=h(x)if hh then hh.WalkSpeed=n or 50 end end
function A.JP(x,n)local hh=h(x)if hh then hh.UseJumpPower=true;hh.JumpPower=n or 200 end end
function A.TS(x)local rr=r(p)local tr=r(x)if rr and tr then tr.Velocity=Vector3.new(0,0,0);tr.AssemblyLinearVelocity=Vector3.new(0,0,0);tr.CFrame=rr.CFrame+rr.CFrame.LookVector*5 end end
function A.SK(x,c)local cc=ch(x)if not cc then return end;for _,y in pairs(cc:GetDescendants())do if y:IsA("BasePart")then y.Color=c end end end
function A.TR(x,v)local cc=ch(x)if not cc then return end;for _,y in pairs(cc:GetDescendants())do if y:IsA("BasePart")then y.Transparency=v end end end
function A.MA(x,m)local cc=ch(x)if not cc then return end;for _,y in pairs(cc:GetDescendants())do if y:IsA("BasePart")then y.Material=m end end end
function A.RG(x)local hh=h(x)if hh then hh:ChangeState(Enum.HumanoidStateType.Physics)end end
function A.BN(x)local rr=r(x)if rr and not rr:FindFirstChild("006F")then local a=Instance.new("Fire",rr)a.Size=10;a.Name="006F"end end
function A.UP(x)local rr=r(x)if rr then rr.CFrame=CFrame.new(rr.Position+Vector3.new(0,500,0))end end
function A.SZ(x,n)local cc=ch(x)if not cc then return end;for _,y in pairs(cc:GetDescendants())do if y:IsA("BasePart")then y.Size=y.Size*(n or 1)end end end
function A.ST(x)local cc=ch(x)if not cc then return end;for _,y in pairs(cc:GetChildren())do if y:IsA("Accessory")or y:IsA("Shirt")or y:IsA("Pants")then y:Destroy()end end end
function A.HD(x,s)local cc=ch(x)local hd=cc and cc:FindFirstChild("Head")if hd then hd.Size=s end end
function A.LEV(x)
    local rr=r(x)if not rr then return end
    local b=Instance.new("BodyPosition",rr)
    b.MaxForce=Vector3.new(0,1e9,0)b.Position=rr.Position+Vector3.new(0,30,0)
    task.delay(4,function()b:Destroy()end)
end
function A.TPA(x)
    local me=r(p)local tr=r(x)
    if not me or not tr then return end
    me.Velocity=Vector3.new(0,0,0)
    me.AssemblyLinearVelocity=Vector3.new(0,0,0)
    me.CFrame=tr.CFrame+Vector3.new(0,3,0)
    task.wait(0.05)
    me.Velocity=Vector3.new(0,0,0)
    me.AssemblyLinearVelocity=Vector3.new(0,0,0)
end
local LO={}
local function SL(id,t,f,dl)XL(id)LO[id]=task.spawn(function()while LO[id]do fa(t,f)task.wait(dl or .2)end end)end
local function XL(id)if LO[id]then pcall(function()task.cancel(LO[id])end);LO[id]=nil end end
local function XA()for k in pairs(LO)do XL(k)end endlocal sg=Instance.new("ScreenGui")sg.Name="P006";sg.ResetOnSpawn=false;sg.ZIndexBehavior=Enum.ZIndexBehavior.Sibling;sg.Parent=p:WaitForChild("PlayerGui")
local f=Instance.new("Frame")f.Size=UDim2.new(0,410,0,510)f.Position=UDim2.new(.5,-205,.5,-255)f.BackgroundColor3=Color3.fromRGB(12,0,22)f.BorderSizePixel=0;f.Active=true;f.Parent=sg
Instance.new("UICorner",f).CornerRadius=UDim.new(0,12)
local st=Instance.new("UIStroke",f)st.Color=Color3.fromRGB(160,0,220)st.Thickness=2
local grad=Instance.new("UIGradient",st)
grad.Color=ColorSequence.new({ColorSequenceKeypoint.new(0,Color3.fromRGB(200,0,255)),ColorSequenceKeypoint.new(1,Color3.fromRGB(0,150,255))})
local ti=Instance.new("TextLabel")ti.Size=UDim2.new(1,-96,0,36)ti.BackgroundColor3=Color3.fromRGB(139,0,0)ti.Text=">:D   Painel 006L6   >:D"ti.TextColor3=Color3.new(1,1,1)ti.TextScaled=true;ti.Font=Enum.Font.GothamBold;ti.Parent=f
Instance.new("UICorner",ti).CornerRadius=UDim.new(0,12)
local tigrad=Instance.new("UIGradient",ti)tigrad.Color=ColorSequence.new({ColorSequenceKeypoint.new(0,Color3.fromRGB(180,0,0)),ColorSequenceKeypoint.new(1,Color3.fromRGB(255,60,60))})
local bx=Instance.new("TextButton")bx.Size=UDim2.new(0,32,0,36)bx.Position=UDim2.new(1,-64,0,0)bx.BackgroundColor3=Color3.fromRGB(255,165,0)bx.Text="-"bx.TextColor3=Color3.new(1,1,1)bx.TextScaled=true;bx.Font=Enum.Font.GothamBold;bx.Parent=f
Instance.new("UICorner",bx).CornerRadius=UDim.new(0,10)
local xx=Instance.new("TextButton")xx.Size=UDim2.new(0,32,0,36)xx.Position=UDim2.new(1,-32,0,0)xx.BackgroundColor3=Color3.fromRGB(200,0,0)xx.Text="X"xx.TextColor3=Color3.new(1,1,1)xx.TextScaled=true;xx.Font=Enum.Font.GothamBold;xx.Parent=f
Instance.new("UICorner",xx).CornerRadius=UDim.new(0,10)
local ac=Instance.new("Frame")ac.Size=UDim2.new(1,0,0,34)ac.Position=UDim2.new(0,0,0,38)ac.BackgroundColor3=Color3.fromRGB(30,0,50)ac.BorderSizePixel=0;ac.Parent=f
local ass=Instance.new("ScrollingFrame")ass.Size=UDim2.new(1,0,1,0)ass.BackgroundTransparency=1;ass.CanvasSize=UDim2.new(0,0,0,0)ass.AutomaticCanvasSize=Enum.AutomaticSize.X;ass.ScrollBarThickness=3;ass.ScrollBarImageColor3=Color3.fromRGB(200,0,255);ass.ScrollingDirection=Enum.ScrollingDirection.X;ass.Parent=ac
Instance.new("UIListLayout",ass).FillDirection=Enum.FillDirection.Horizontal
local ct=Instance.new("ScrollingFrame")ct.Size=UDim2.new(1,-4,1,-104)ct.Position=UDim2.new(0,2,0,74)ct.BackgroundTransparency=1;ct.CanvasSize=UDim2.new(0,0,0,0)ct.AutomaticCanvasSize=Enum.AutomaticSize.Y;ct.ScrollBarThickness=4;ct.ScrollBarImageColor3=Color3.fromRGB(200,0,255);ct.Parent=f
local dr,ds,sp=false,nil,nil
ti.InputBegan:Connect(function(i)if i.UserInputType==Enum.UserInputType.MouseButton1 or i.UserInputType==Enum.UserInputType.Touch then dr=true;ds=i.Position;sp=f.Position end end)
ti.InputChanged:Connect(function(i)if dr and(i.UserInputType==Enum.UserInputType.MouseMovement or i.UserInputType==Enum.UserInputType.Touch)then local d=i.Position-ds;f.Position=UDim2.new(sp.X.Scale,sp.X.Offset+d.X,sp.Y.Scale,sp.Y.Offset+d.Y)end end)
ti.InputEnded:Connect(function(i)if i.UserInputType==Enum.UserInputType.MouseButton1 or i.UserInputType==Enum.UserInputType.Touch then dr=false end end)
bx.MouseButton1Click:Connect(function()
    ct.Visible=not ct.Visible;ac.Visible=ct.Visible
    f.Size=ct.Visible and UDim2.new(0,410,0,510)or UDim2.new(0,410,0,36)
    bx.Text=ct.Visible and"-"or"+"
end)
xx.MouseButton1Click:Connect(function()XA()sg:Destroy()end)
local T={}
local function AB(n,c)
    local b=Instance.new("TextButton")b.Size=UDim2.new(0,116,1,0)b.BackgroundColor3=c;b.TextColor3=Color3.new(1,1,1)b.TextScaled=true;b.Font=Enum.Font.GothamBold;b.Text=n.." >:D"b.Parent=ass;b.BorderSizePixel=0
    Instance.new("UICorner",b).CornerRadius=UDim.new(0,6)
    local fr=Instance.new("Frame")fr.Size=UDim2.new(1,0,1,0)fr.BackgroundTransparency=1;fr.Visible=false;fr.Parent=ct
    Instance.new("UIListLayout",fr).Padding=UDim.new(0,4)
    T[n]={b=b,f=fr,c=c}
    b.MouseButton1Click:Connect(function()for _,v in pairs(T)do v.f.Visible=false;v.b.BackgroundColor3=v.c end;fr.Visible=true;b.BackgroundColor3=Color3.fromRGB(255,60,60)end)
    return fr
end
local function BT(n,fn,pr,c)
    local b=Instance.new("TextButton")b.Size=UDim2.new(1,0,0,30)b.BackgroundColor3=c or Color3.fromRGB(120,0,180)b.TextColor3=Color3.new(1,1,1)b.TextScaled=true;b.Font=Enum.Font.GothamBold;b.Text=n.." >:D"b.Parent=pr;b.BorderSizePixel=0
    Instance.new("UICorner",b).CornerRadius=UDim.new(0,5)
    local sh=Instance.new("UIStroke",b)sh.Color=Color3.fromRGB(255,255,255)sh.Thickness=1;sh.Transparency=0.7
    b.MouseButton1Click:Connect(function()local ok,er=pcall(fn)if not ok then warn(er)end end)
    return b
end
local AZ=Color3.fromRGB(0,120,240)local VE=Color3.fromRGB(210,30,50)local AM=Color3.fromRGB(210,160,0)local RX=Color3.fromRGB(150,0,215)local CY=Color3.fromRGB(0,175,175)local VC=Color3.fromRGB(0,180,70)local LR=Color3.fromRGB(255,145,0)local MD=Color3.fromRGB(230,0,190)local CC=Color3.fromRGB(0,210,230)local GD=Color3.fromRGB(255,220,0)local PR=Color3.fromRGB(90,90,110)local PT=Color3.fromRGB(220,0,70)
local function UN(t,f)return{{t.." mim",function()fa("s",f)end},{t.." aliados",function()fa("a",f)end},{t.." inimigos",function()fa("e",f)end},{t.." todos",function()fa("all",f)end},{t.." próximo",function()fa("n",f)end},{t.." aleatório",function()fa("r",f)end}}end
local function UL(t,id,dl,f)return{{t.." loop inimigos",function()SL(id,"e",f,dl)end},{t.." loop todos",function()SL(id.."A","all",f,dl)end},{t.." loop próximo",function()SL(id.."N","n",f,dl)end},{t.." parar",function()XL(id)XL(id.."A")XL(id.."N")end}}endlocal function mkArm(nome,tam,cor,mat,light,part)
    local t=Instance.new("Tool",p.Backpack)t.Name=nome t.RequiresHandle=false t.CanBeDropped=false
    local hd=Instance.new("Part",t)hd.Name="Handle"hd.Size=tam hd.Color=cor hd.Material=mat
    if light then local l=Instance.new("PointLight",hd)l.Color=cor;l.Range=20;l.Brightness=4 end
    if part then
        local pt=Instance.new("ParticleEmitter",hd)
        pt.Texture="rbxassetid://243660364"pt.Rate=20
        pt.Color=ColorSequence.new(cor)
        pt.Size=NumberSequence.new(0.3)
        pt.Lifetime=NumberRange.new(0.5,1)
    end
    return t
end
local function mkPortal()
    for _,x in pairs(p.Backpack:GetChildren())do if x.Name==">:D Portal Gun"then x:Destroy()end end
    local t=Instance.new("Tool",p.Backpack)t.Name=">:D Portal Gun"t.RequiresHandle=false t.CanBeDropped=false
    local sg2=Instance.new("ScreenGui",p:WaitForChild("PlayerGui"))sg2.Name="PortalGUI"sg2.Enabled=false
    local fr=Instance.new("Frame",sg2)fr.Size=UDim2.new(0,300,0,420)fr.Position=UDim2.new(.5,-150,.5,-210)fr.BackgroundColor3=Color3.fromRGB(15,0,25)fr.BorderSizePixel=0
    Instance.new("UICorner",fr).CornerRadius=UDim.new(0,10)
    local tl=Instance.new("TextLabel",fr)tl.Size=UDim2.new(1,0,0,34)tl.BackgroundColor3=Color3.fromRGB(200,0,0)tl.Text=">:D Portais >:D"tl.TextColor3=Color3.new(1,1,1)tl.TextScaled=true;tl.Font=Enum.Font.GothamBold
    Instance.new("UICorner",tl).CornerRadius=UDim.new(0,10)
    local sc=Instance.new("ScrollingFrame",fr)sc.Size=UDim2.new(1,-8,1,-44)sc.Position=UDim2.new(0,4,0,38)sc.BackgroundTransparency=1;sc.CanvasSize=UDim2.new(0,0,0,0)sc.AutomaticCanvasSize=Enum.AutomaticSize.Y;sc.ScrollBarThickness=3;sc.ScrollBarImageColor3=Color3.fromRGB(255,0,0)
    Instance.new("UIListLayout",sc).Padding=UDim.new(0,4)
    local JG={
        ["Adopt Me"]=920587237,["Blox Fruits"]=2753915549,["Arsenal"]=286090429,
        ["Jailbreak"]=606849621,["Brookhaven"]=4924922222,["MM2"]=142823291,
        ["Piggy"]=4623386862,["Tower of Hell"]=1962086868,["BedWars"]=6872265039,
        ["Doors"]=6516141723,["Pet Sim X"]=6284583030,["Grow a Garden"]=126884695634066
    }
    for nome,id in pairs(JG)do
        local b=Instance.new("TextButton",sc)b.Size=UDim2.new(1,-8,0,30)b.BackgroundColor3=Color3.fromRGB(180,0,0)b.TextColor3=Color3.new(1,1,1)b.TextScaled=true;b.Font=Enum.Font.GothamBold;b.BorderSizePixel=0
        Instance.new("UICorner",b).CornerRadius=UDim.new(0,5)
        b.Text=">:D "..nome
        b.MouseButton1Click:Connect(function()sg2.Enabled=false;pcall(function()TS:Teleport(id,p)end)end)
    end
    t.Equipped:Connect(function()sg2.Enabled=true end)
    t.Unequipped:Connect(function()sg2.Enabled=false end)
    return t
end
local function PB(pos,tam,cor,mat)
    local x=Instance.new("Part",workspace)x.Size=tam x.Position=pos
    x.Color=cor x.Material=mat or Enum.Material.SmoothPlastic
    x.Anchored=true return x
end
local function mkMansao()
    local rr=r()if not rr then return end
    local b=rr.Position+rr.CFrame.LookVector*25
    for x=-5,5 do for z=-5,5 do PB(b+Vector3.new(x*4,0,z*4),Vector3.new(4,1,4),Color3.fromRGB(100,60,40),Enum.Material.Slate)end end
    for y=1,4 do
        for x=-5,5 do if math.abs(x)==5 then for z=-4,4 do PB(b+Vector3.new(x*4,y*4,z*4),Vector3.new(1,4,4),Color3.fromRGB(220,200,160),Enum.Material.Brick)end end end
        for z=-5,5 do if math.abs(z)==5 then for x=-4,4 do PB(b+Vector3.new(x*4,y*4,z*4),Vector3.new(4,4,1),Color3.fromRGB(220,200,160),Enum.Material.Brick)end end end
    end
    for x=-5,5 do for z=-5,5 do PB(b+Vector3.new(x*4,16,z*4),Vector3.new(4,1,4),Color3.fromRGB(140,90,60),Enum.Material.WoodPlanks)end end
    for y=5,7 do
        for x=-5,5 do if math.abs(x)==5 then for z=-4,4 do PB(b+Vector3.new(x*4,y*4,z*4),Vector3.new(1,4,4),Color3.fromRGB(240,220,180),Enum.Material.Brick)end end end
        for z=-5,5 do if math.abs(z)==5 then for x=-4,4 do PB(b+Vector3.new(x*4,y*4,z*4),Vector3.new(4,4,1),Color3.fromRGB(240,220,180),Enum.Material.Brick)end end end
    end
    for i=0,6 do
        local s=5-i*0.8
        for x=-5,5 do for z=-5,5 do
            if math.abs(x)<=s and math.abs(z)<=s then PB(b+Vector3.new(x*4,32+i*2,z*4),Vector3.new(4,2,4),Color3.fromRGB(120,30,30),Enum.Material.Slate)end
        end end
    end
end
local function mkCastelo()
    local rr=r()if not rr then return end
    local b=rr.Position+rr.CFrame.LookVector*40
    for y=0,8 do for x=-6,6 do for z=-6,6 do
        if math.abs(x)==6 or math.abs(z)==6 then PB(b+Vector3.new(x*4,y*4,z*4),Vector3.new(4,4,4),Color3.fromRGB(140,140,150),Enum.Material.Slate)end
    end end end
    for _,pos in ipairs({{-6,-6},{6,-6},{-6,6},{6,6}})do
        for y=0,12 do PB(b+Vector3.new(pos[1]*4,y*4,pos[2]*4),Vector3.new(4,4,4),Color3.fromRGB(120,120,130),Enum.Material.Slate)end
        for x=-1,1 do for z=-1,1 do
            if x==0 or z==0 then PB(b+Vector3.new(pos[1]*4+x*3,14*4,pos[2]*4+z*3),Vector3.new(2,4,2),Color3.fromRGB(100,100,110),Enum.Material.Slate)end
        end end
    end
end
local function mkTorre()
    local rr=r()if not rr then return end
    local b=rr.Position+rr.CFrame.LookVector*20
    for y=0,10 do for x=-2,2 do for z=-2,2 do
        if math.abs(x)==2 or math.abs(z)==2 then PB(b+Vector3.new(x*4,y*4,z*4),Vector3.new(4,4,4),Color3.fromRGB(80,80,80),Enum.Material.Slate)end
    end end end
    for x=-2,2,2 do for z=-2,2,2 do PB(b+Vector3.new(x*4,12*4,z*4),Vector3.new(3,3,3),Color3.fromRGB(60,60,60),Enum.Material.Slate)end end
end
local D={}
D[#D+1]={"GOD",GD,{
    {"ativar em mim",function()A.GO(p)end},
    {"ativar nos aliados",function()fa("a",A.GO)end},
    {"ativar nos inimigos",function()fa("e",A.GO)end},
    {"ativar em todos",function()fa("all",A.GO)end},
    {"desligar em mim",function()local hh=h(p)if hh then hh.MaxHealth=100;hh.Health=100 end end},
    {"desligar em todos",function()fa("all",function(x)local hh=h(x)if hh then hh.MaxHealth=100;hh.Health=100 end end)end},
    {"hp 1 bilhão em todos",function()fa("all",function(x)A.HP(x,1e9)end)end},
    {"imortal loop em mim",function()SL("imm","s",function(x)local hh=h(x)if hh and hh.Health<hh.MaxHealth then hh.Health=hh.MaxHealth end end,.2)end},
    {"imortal loop nos aliados",function()SL("immA","a",function(x)local hh=h(x)if hh and hh.Health<hh.MaxHealth then hh.Health=hh.MaxHealth end end,.3)end},
    {"imortal loop em todos",function()SL("immT","all",function(x)local hh=h(x)if hh and hh.Health<hh.MaxHealth then hh.Health=hh.MaxHealth end end,.3)end},
    {"parar imortal",function()XL("imm")XL("immA")XL("immT")end}
}}
D[#D+1]={"CURAR",VE,UN("curar",A.HE)}
D[#D+1]={"CURAR LOOP",VE,UL("curar","hl",.5,A.HE)}
D[#D+1]={"DANO 25",VE,UN("dar 25 de dano",function(x)A.DA(x,25)end)}
D[#D+1]={"DANO 999",VE,UN("dar 999 de dano",function(x)A.DA(x,999)end)}
D[#D+1]={"DANO LOOP",VE,UL("danar 10","dl",.3,function(x)A.DA(x,10)end)}
D[#D+1]={"MATAR",VE,UN("matar",A.KI)}
D[#D+1]={"MATAR LOOP",VE,UL("matar","kl",.2,A.KI)}
D[#D+1]={"HP 5000",VE,UN("dar 5000 hp",function(x)A.HP(x,5000)end)}
D[#D+1]={"HP 1 MILHÃO",VE,UN("dar 1M hp",function(x)A.HP(x,1000000)end)}
D[#D+1]={"RESETAR",VE,UN("resetar",A.KI)}
D[#D+1]={"QUEIMAR",VE,UN("queimar",A.BN)}
D[#D+1]={"CONGELAR",VE,UN("congelar",A.FR)}
D[#D+1]={"FLING",VE,UN("fling",A.FL)}
D[#D+1]={"LANÇAR",VE,UN("lançar pro céu",A.UP)}
D[#D+1]={"RAGDOLL",VE,UN("ragdoll",A.RG)}
D[#D+1]={"LEVITAR",VE,UN("levitar",A.LEV)}
D[#D+1]={"TIRAR ROUPAS",MD,UN("tirar roupas",A.ST)}
D[#D+1]={"CABEÇA GDE",RX,UN("cabeça grande",function(x)A.HD(x,Vector3.new(4,4,4))end)}
D[#D+1]={"TP",CY,{
    {"ir pro mais próximo",function()local a=GT("n")[1]if a then A.TPA(a)end end},
    {"trazer o mais próximo",function()local a=GT("n")[1]if a then A.TS(a)end end},
    {"ir pra inimigo aleatório",function()local l=GT("e")if #l==0 then return end;A.TPA(l[math.random(#l)])end},
    {"ir pra aliado aleatório",function()local l=GT("a")if #l==0 then return end;A.TPA(l[math.random(#l)])end},
    {"ir pra jogador aleatório",function()local l={}for _,x in ipairs(P:GetPlayers())do if x~=p then l[#l+1]=x end end;if #l==0 then return end;A.TPA(l[math.random(#l)])end},
    {"subir 500m",function()local me=r(p)if me then me.Velocity=Vector3.new(0,0,0)me.AssemblyLinearVelocity=Vector3.new(0,0,0)me.CFrame=CFrame.new(me.Position+Vector3.new(0,500,0))task.wait(0.05)me.Velocity=Vector3.new(0,0,0)me.AssemblyLinearVelocity=Vector3.new(0,0,0)end end},
    {"trazer todos",function()local me=r(p)if not me then return end;for _,x in ipairs(GT("all"))do if x~=p then local tr=r(x)if tr then tr.Velocity=Vector3.new(0,0,0)tr.AssemblyLinearVelocity=Vector3.new(0,0,0)tr.CFrame=me.CFrame+me.CFrame.LookVector*5 end end end end},
    {"trazer inimigos",function()local me=r(p)if not me then return end;for _,x in ipairs(GT("e"))do local tr=r(x)if tr then tr.Velocity=Vector3.new(0,0,0)tr.AssemblyLinearVelocity=Vector3.new(0,0,0)tr.CFrame=me.CFrame+me.CFrame.LookVector*5 end end end},
    {"trazer aliados",function()local me=r(p)if not me then return end;for _,x in ipairs(GT("a"))do local tr=r(x)if tr then tr.Velocity=Vector3.new(0,0,0)tr.AssemblyLinearVelocity=Vector3.new(0,0,0)tr.CFrame=me.CFrame+me.CFrame.LookVector*5 end end end},
    {"juntar todos à frente",function()local me=r(p)if not me then return end;local i=0;for _,x in ipairs(GT("all"))do if x~=p then local tr=r(x)if tr then i=i+1;tr.Velocity=Vector3.new(0,0,0)tr.AssemblyLinearVelocity=Vector3.new(0,0,0)tr.CFrame=me.CFrame+me.CFrame.LookVector*(5+i*4)end end end end}
}}
D[#D+1]={"VELOCIDADE",AZ,{
    {"vel 50 em mim",function()A.SP(p,50)end},{"vel 100 em mim",function()A.SP(p,100)end},
    {"vel 200 em mim",function()A.SP(p,200)end},{"vel 500 em mim",function()A.SP(p,500)end},
    {"vel 1000 em mim",function()A.SP(p,1000)end},{"vel normal",function()A.SP(p,16)end},
    {"vel 100 inimigos",function()fa("e",function(x)A.SP(x,100)end)end},{"vel 100 todos",function()fa("all",function(x)A.SP(x,100)end)end}
}}
D[#D+1]={"PULO",AZ,{
    {"pulo 100 mim",function()A.JP(p,100)end},{"pulo 300 mim",function()A.JP(p,300)end},
    {"pulo 500 mim",function()A.JP(p,500)end},{"pulo 1000 mim",function()A.JP(p,1000)end},
    {"pulo normal",function()A.JP(p,50)end},{"grav 0",function()workspace.Gravity=0 end},
    {"grav 30",function()workspace.Gravity=30 end},{"grav normal",function()workspace.Gravity=196.2 end}
}}
D[#D+1]={"VOAR",AZ,{
    {"voar ON (mobile)",function()
        XL("fly")
        local pg=p:WaitForChild("PlayerGui")
        local old=pg:FindFirstChild("006VooGUI")
        if old then old:Destroy() end
        local vg=Instance.new("ScreenGui",pg)vg.Name="006VooGUI"vg.ResetOnSpawn=false;vg.DisplayOrder=10
        _G.VooVel=_G.VooVel or 80;_G.VooUp=false;_G.VooDown=false
        local function btn(txt,pos,cor)
            local b=Instance.new("TextButton",vg)b.Size=UDim2.new(0,60,0,60)b.Position=pos;b.BackgroundColor3=cor;b.TextColor3=Color3.new(1,1,1)b.TextScaled=true;b.Font=Enum.Font.GothamBold;b.Text=txt;b.BackgroundTransparency=0.3
            Instance.new("UICorner",b).CornerRadius=UDim.new(0,30)
            local s2=Instance.new("UIStroke",b)s2.Color=Color3.fromRGB(255,255,255)s2.Thickness=1.5;s2.Transparency=0.5
            return b
        end
        local sobe=btn("▲",UDim2.new(0,20,0,180),Color3.fromRGB(0,180,0))
        local desce=btn("▼",UDim2.new(0,20,0,320),Color3.fromRGB(180,0,0))
        local mais=btn("+",UDim2.new(1,-80,0,180),Color3.fromRGB(0,100,220))
        local menos=btn("-",UDim2.new(1,-80,0,320),Color3.fromRGB(220,140,0))
        local sair=btn("X",UDim2.new(1,-80,0,40),Color3.fromRGB(139,0,0))
        sobe.MouseButton1Down:Connect(function()_G.VooUp=true end)
        sobe.MouseButton1Up:Connect(function()_G.VooUp=false end)
        sobe.MouseLeave:Connect(function()_G.VooUp=false end)
        desce.MouseButton1Down:Connect(function()_G.VooDown=true end)
        desce.MouseButton1Up:Connect(function()_G.VooDown=false end)
        desce.MouseLeave:Connect(function()_G.VooDown=false end)
        mais.MouseButton1Click:Connect(function()_G.VooVel=_G.VooVel+40;print(">:D Voo:",_G.VooVel)end)
        menos.MouseButton1Click:Connect(function()_G.VooVel=math.max(20,_G.VooVel-40);print(">:D Voo:",_G.VooVel)end)
        sair.MouseButton1Click:Connect(function()XL("fly")local g=pg:FindFirstChild("006VooGUI")if g then g:Destroy()end end)
        LO["fly"]=task.spawn(function()
            local me=r(p)if not me then return end
            local bv=Instance.new("BodyVelocity",me)bv.MaxForce=Vector3.new(1e9,1e9,1e9)bv.Name="006FLY"
            while LO["fly"]do
                local me2=r(p)
                if me2 then
                    local hum=h(p)local mov=Vector3.new(0,0,0)
                    if hum then mov=hum.MoveDirection*_G.VooVel end
                    if _G.VooUp then mov=mov+Vector3.new(0,_G.VooVel,0)end
                    if _G.VooDown then mov=mov-Vector3.new(0,_G.VooVel,0)end
                    bv.Velocity=mov
                end
                task.wait()
            end
            if bv then bv:Destroy()end
        end)
    end},
    {"voar OFF",function()XL("fly")local me=r(p)if me then local b=me:FindFirstChild("006FLY")if b then b:Destroy()end end;local pg=p:WaitForChild("PlayerGui")local g=pg:FindFirstChild("006VooGUI")if g then g:Destroy()end end},
    {"voar ON nos inimigos",function()SL("flE","e",function(x)local rr=r(x)if rr and not rr:FindFirstChild("006FLYE")then local b=Instance.new("BodyVelocity",rr)b.Name="006FLYE"b.MaxForce=Vector3.new(1e9,1e9,1e9)b.Velocity=Vector3.new(0,50,0)end end,.2)end},
    {"voar OFF nos inimigos",function()XL("flE")end}
}}
D[#D+1]={"NOCLIP",AZ,{
    {"noclip ON mim",function()XL("nc")LO["nc"]=task.spawn(function()while LO["nc"]do local cc=ch(p)if cc then for _,y in pairs(cc:GetDescendants())do if y:IsA("BasePart")then y.CanCollide=false end end end;task.wait(.2)end end)end},
    {"noclip OFF mim",function()XL("nc")local cc=ch(p)if cc then for _,y in pairs(cc:GetDescendants())do if y:IsA("BasePart")and y.Name~="HumanoidRootPart"then y.CanCollide=true end end end end},
    {"noclip nos aliados",function()for _,x in ipairs(GT("a"))do local cc=ch(x)if cc then for _,y in pairs(cc:GetDescendants())do if y:IsA("BasePart")then y.CanCollide=false end end end end end}
}}
D[#D+1]={"ANTIVOID",AZ,{
    {"antivoid ON",function()XL("av")LO["av"]=task.spawn(function()while LO["av"]do local rr=r(p)if rr and rr.Position.Y<-50 then local s=workspace:FindFirstChildOfClass("SpawnLocation")if s then rr.CFrame=s.CFrame+Vector3.new(0,5,0)end end;task.wait(.5)end end)end},
    {"antivoid OFF",function()XL("av")end}
}}
D[#D+1]={"BUNNY HOP",AZ,{
    {"bhop ON",function()XL("bh")LO["bh"]=task.spawn(function()while LO["bh"]do local hh=h(p)if hh and hh.MoveDirection.Magnitude>0 then hh.Jump=true end;task.wait()end end)end},
    {"bhop OFF",function()XL("bh")end}
}}
D[#D+1]={"GIRAR",AZ,{
    {"girar mim",function()XL("sp")LO["sp"]=task.spawn(function()while LO["sp"]do local rr=r(p)if rr then rr.CFrame=rr.CFrame*CFrame.Angles(0,math.rad(25),0)end;task.wait()end end)end},
    {"parar girar mim",function()XL("sp")end},
    {"girar inimigos",function()SL("spE","e",function(x)local rr=r(x)if rr then rr.CFrame=rr.CFrame*CFrame.Angles(0,math.rad(45),0)end end,.05)end},
    {"parar girar inimigos",function()XL("spE")end}
}}
D[#D+1]={"INVISÍVEL",RX,UN("deixar invisível",function(x)A.TR(x,1)end)}
D[#D+1]={"VISÍVEL",RX,UN("deixar visível",function(x)A.TR(x,0)end)}
D[#D+1]={"VERMELHO",RX,UN("pintar vermelho",function(x)A.SK(x,Color3.fromRGB(200,0,0))end)}
D[#D+1]={"AZUL",RX,UN("pintar azul",function(x)A.SK(x,Color3.fromRGB(0,0,255))end)}
D[#D+1]={"VERDE",RX,UN("pintar verde",function(x)A.SK(x,Color3.fromRGB(0,255,0))end)}
D[#D+1]={"ROXO",RX,UN("pintar roxo",function(x)A.SK(x,Color3.fromRGB(140,0,200))end)}
D[#D+1]={"AMARELO",RX,UN("pintar amarelo",function(x)A.SK(x,Color3.fromRGB(255,255,0))end)}
D[#D+1]={"ROSA",RX,UN("pintar rosa",function(x)A.SK(x,Color3.fromRGB(255,105,180))end)}
D[#D+1]={"PRETO",RX,UN("pintar preto",function(x)A.SK(x,Color3.fromRGB(0,0,0))end)}
D[#D+1]={"BRANCO",RX,UN("pintar branco",function(x)A.SK(x,Color3.fromRGB(255,255,255))end)}
D[#D+1]={"RGB",RX,{
    {"rgb mim ON",function()XL("rgb")LO["rgb"]=task.spawn(function()while LO["rgb"]do A.SK(p,Color3.fromRGB(math.random(0,255),math.random(0,255),math.random(0,255)))task.wait(.2)end end)end},
    {"rgb mim OFF",function()XL("rgb")end},
    {"rgb inimigos ON",function()SL("rgbE","e",function(x)A.SK(x,Color3.fromRGB(math.random(0,255),math.random(0,255),math.random(0,255)))end,.2)end},
    {"rgb inimigos OFF",function()XL("rgbE")end},
    {"rgb todos ON",function()SL("rgbT","all",function(x)A.SK(x,Color3.fromRGB(math.random(0,255),math.random(0,255),math.random(0,255)))end,.2)end},
    {"rgb todos OFF",function()XL("rgbT")end}
}}
D[#D+1]={"TAMANHO 2X",RX,UN("deixar 2x",function(x)A.SZ(x,2)end)}
D[#D+1]={"TAMANHO 3X",RX,UN("deixar 3x",function(x)A.SZ(x,3)end)}
D[#D+1]={"TAMANHO 5X",RX,UN("deixar 5x",function(x)A.SZ(x,5)end)}
D[#D+1]={"TAMANHO 0.5",RX,UN("deixar metade",function(x)A.SZ(x,.5)end)}
D[#D+1]={"MAT NEON",RX,UN("deixar neon",function(x)A.MA(x,Enum.Material.Neon)end)}
D[#D+1]={"MAT GELO",RX,UN("deixar gelo",function(x)A.MA(x,Enum.Material.Ice)end)}
D[#D+1]={"MAT METAL",RX,UN("deixar metal",function(x)A.MA(x,Enum.Material.Metal)end)}
D[#D+1]={"MAT VIDRO",RX,UN("deixar vidro",function(x)A.MA(x,Enum.Material.Glass)end)}
D[#D+1]={"FOGO",RX,{
    {"fogo mim ON",function()A.BN(p)end},
    {"fogo mim OFF",function()local rr=r(p)if rr then local a=rr:FindFirstChild("006F")if a then a:Destroy()end end end},
    {"fogo inimigos ON",function()SL("fgE","e",A.BN,1)end},
    {"fogo inimigos OFF",function()XL("fgE")for _,x in ipairs(GT("all"))do local rr=r(x)if rr then local a=rr:FindFirstChild("006F")if a then a:Destroy()end end end end}
}}
D[#D+1]={"COROA",RX,{
    {"coroa mim ON",function()local cc=ch(p)local hd=cc and cc:FindFirstChild("Head")if hd and not cc:FindFirstChild("006Cr")then local x=Instance.new("Part",cc)x.Size=Vector3.new(2,1,2)x.Color=Color3.fromRGB(255,215,0)x.Material=Enum.Material.Neon;x.CanCollide=false;x.Name="006Cr"local w=Instance.new("Weld",x)w.Part1=x;w.Part0=hd;w.C0=CFrame.new(0,1,0)end end},
    {"coroa mim OFF",function()local cc=ch(p)local k=cc and cc:FindFirstChild("006Cr")if k then k:Destroy()end end}
}}
D[#D+1]={"BRILHO",RX,{
    {"brilho mim ON",function()local rr=r(p)if rr and not rr:FindFirstChild("006L")then local l=Instance.new("PointLight",rr)l.Range=40;l.Brightness=5;l.Color=Color3.fromRGB(200,0,255);l.Name="006L"end end},
    {"brilho mim OFF",function()local rr=r(p)if rr then local l=rr:FindFirstChild("006L")if l then l:Destroy()end end end}
}}
D[#D+1]={"ARMAS",VE,{
    {"espada de fogo",function()mkArm(">:D Espada de Fogo",Vector3.new(0.4,6,0.4),Color3.fromRGB(255,80,0),Enum.Material.Neon,true,true)end},
    {"espada de gelo",function()mkArm(">:D Espada de Gelo",Vector3.new(0.4,6,0.4),Color3.fromRGB(100,200,255),Enum.Material.Ice,true,true)end},
    {"espada arcana",function()mkArm(">:D Espada Arcana",Vector3.new(0.5,7,0.5),Color3.fromRGB(180,0,255),Enum.Material.Neon,true,true)end},
    {"martelo de guerra",function()mkArm(">:D Martelo",Vector3.new(2,2.5,2.5),Color3.fromRGB(80,80,80),Enum.Material.Metal,false,false)end},
    {"sabre de luz",function()mkArm(">:D Sabre",Vector3.new(0.25,8,0.25),Color3.fromRGB(0,255,100),Enum.Material.Neon,true,true)end},
    {"limpar minha mochila",function()for _,x in pairs(p.Backpack:GetChildren())do if x:IsA("Tool")then x:Destroy()end end end}
}}
D[#D+1]={"PORTAL GUN",PT,{
    {"dar portal gun",function()mkPortal()end},
    {"remover portal gun",function()for _,x in pairs(p.Backpack:GetChildren())do if x.Name==">:D Portal Gun"then x:Destroy()end end if p.Character then for _,x in pairs(p.Character:GetChildren())do if x.Name==">:D Portal Gun"then x:Destroy()end end end end}
}}
D[#D+1]={"CONSTRUIR",AM,{
    {"construir mansão",function()mkMansao()end},
    {"construir castelo",function()mkCastelo()end},
   local pm=true
for _,it in ipairs(D)do
    local fr=AB(it[1],it[2])
    local y=4
    for _,bt in ipairs(it[3])do
        BT(bt[1],bt[2],fr,it[2])
        y=y+32
    end
    if pm then
        fr.Visible=true
        T[it[1]].b.BackgroundColor3=Color3.fromRGB(255,60,60)
        pm=false
    end
end
print(">:D Painel 006L6 >:D FINAL OTIMIZADO carregado! Abas:",#D)-- ===== BLOCO 5 =====
D[#D+1]={"SKYBOX",CC,{
    {"céu espacial",function()LG.Sky=Instance.new("Sky")LG.Sky.SkyboxBk="rbxassetid://159454299"LG.Sky.SkyboxDn="rbxassetid://159454296"LG.Sky.SkyboxFt="rbxassetid://159454293"LG.Sky.SkyboxLf="rbxassetid://159454286"LG.Sky.SkyboxRt="rbxassetid://159454300"LG.Sky.SkyboxUp="rbxassetid://159454288"LG.Sky.Parent=LG end},
    {"céu vermelho",function()LG.Sky=Instance.new("Sky")LG.Sky.SkyboxBk="rbxassetid://1708894"LG.Sky.SkyboxDn="rbxassetid://1708894"LG.Sky.SkyboxFt="rbxassetid://1708894"LG.Sky.SkyboxLf="rbxassetid://1708894"LG.Sky.SkyboxRt="rbxassetid://1708894"LG.Sky.SkyboxUp="rbxassetid://1708894"LG.Sky.Parent=LG end},
    {"céu noturno",function()LG.Sky=Instance.new("Sky")LG.Sky.SkyboxBk="rbxassetid://159454299"LG.Sky.SkyboxDn="rbxassetid://159454296"LG.Sky.SkyboxFt="rbxassetid://159454293"LG.Sky.SkyboxLf="rbxassetid://159454286"LG.Sky.SkyboxRt="rbxassetid://159454300"LG.Sky.SkyboxUp="rbxassetid://159454288"LG.Sky.Parent=LG;LG.ClockTime=0 end},
    {"céu rosa",function()for _,x in pairs(LG:GetChildren())do if x:IsA("Sky")then x:Destroy()end end;LG.ClockTime=17;LG.Brightness=2;LG.Ambient=Color3.fromRGB(200,100,180)end},
    {"céu normal",function()for _,x in pairs(LG:GetChildren())do if x:IsA("Sky")then x:Destroy()end end;LG.ClockTime=14;LG.Brightness=2;LG.Ambient=Color3.fromRGB(70,70,70)end}
}}
D[#D+1]={"FOV",CC,{
    {"fov 70 (padrão)",function()workspace.CurrentCamera.FieldOfView=70 end},
    {"fov 90",function()workspace.CurrentCamera.FieldOfView=90 end},
    {"fov 110",function()workspace.CurrentCamera.FieldOfView=110 end},
    {"fov 130",function()workspace.CurrentCamera.FieldOfView=130 end},
    {"fov 20 (zoom)",function()workspace.CurrentCamera.FieldOfView=20 end},
    {"fov 1 (luneta)",function()workspace.CurrentCamera.FieldOfView=1 end}
}}
D[#D+1]={"CÂMERA",CC,{
    {"primeira pessoa ON",function()local cam=workspace.CurrentCamera;cam.CameraSubject=p.Character:FindFirstChildOfClass("Humanoid");local h=p.Character:FindFirstChild("Head");if h then cam.CFrame=h.CFrame end end},
    {"câmera livre ON",function()XL("cam")LO["cam"]=task.spawn(function()while LO["cam"]do local h=p.Character:FindFirstChildOfClass("Humanoid");if h then h.CameraOffset=Vector3.new(0,0,-20)end;task.wait()end end)end},
    {"câmera livre OFF",function()XL("cam")local h=p.Character:FindFirstChildOfClass("Humanoid");if h then h.CameraOffset=Vector3.new(0,0,0)end end},
    {"câmera virada",function()local cam=workspace.CurrentCamera;cam.CFrame=cam.CFrame*CFrame.Angles(math.rad(180),0,0)end},
    {"câmera lateral",function()local h=p.Character:FindFirstChildOfClass("Humanoid");if h then h.CameraOffset=Vector3.new(10,0,0)end end},
    {"reset câmera",function()local cam=workspace.CurrentCamera;cam.CameraSubject=p.Character:FindFirstChildOfClass("Humanoid");local h=p.Character:FindFirstChildOfClass("Humanoid");if h then h.CameraOffset=Vector3.new(0,0,0)end end}
}}
D[#D+1]={"DANÇA",MD,{
    {"dançar 1",function()local h=p.Character:FindFirstChildOfClass("Humanoid");if h then local a=Instance.new("Animation")a.AnimationId="rbxassetid://507771019"h:LoadAnimation(a):Play()end end},
    {"dançar 2",function()local h=p.Character:FindFirstChildOfClass("Humanoid");if h then local a=Instance.new("Animation")a.AnimationId="rbxassetid://507776043"h:LoadAnimation(a):Play()end end},
    {"dançar 3",function()local h=p.Character:FindFirstChildOfClass("Humanoid");if h then local a=Instance.new("Animation")a.AnimationId="rbxassetid://507777268"h:LoadAnimation(a):Play()end end},
    {"macarena",function()local h=p.Character:FindFirstChildOfClass("Humanoid");if h then local a=Instance.new("Animation")a.AnimationId="rbxassetid://1836312013"h:LoadAnimation(a):Play()end end},
    {"floss",function()local h=p.Character:FindFirstChildOfClass("Humanoid");if h then local a=Instance.new("Animation")a.AnimationId="rbxassetid://5918726674"h:LoadAnimation(a):Play()end end},
    {"parar dança",function()local h=p.Character:FindFirstChildOfClass("Humanoid");if h then for _,x in pairs(h:GetPlayingAnimationTracks())do x:Stop()end end end}
}}
D[#D+1]={"CHAT",CC,{
    {"spam >:D no chat",function()XL("spam")LO["spam"]=task.spawn(function()while LO["spam"]do SG:SetCore("ChatMakeSystemMessage",{Text=">:D Painel 006L6 >:D",Color=Color3.fromRGB(255,0,0),Font=Enum.Font.GothamBold})task.wait(1)end end)end},
    {"parar spam",function()XL("spam")end},
    {"falar no chat",function()
        local texto=">:D 006L6 >:D"
        SG:SetCore("ChatMakeSystemMessage",{Text=texto,Color=Color3.fromRGB(200,0,255)})
    end},
    {"limpar chat",function()for _,x in pairs(p.PlayerGui:GetChildren())do if x.Name=="Chat"then for _,y in pairs(x:GetDescendants())do if y:IsA("Frame")then y:Destroy()end end end end end}
}}
D[#D+1]={"AUTO CLICKER",CC,{
    {"auto clicker ON",function()
        XL("ac")
        LO["ac"]=task.spawn(function()
            while LO["ac"]do
                local m=p:GetMouse()
                if m then
                    local t=m.Target
                    if t then pcall(function()t:Activate()end)end
                end
                task.wait(0.1)
            end
        end)
    end},
    {"auto clicker OFF",function()XL("ac")end},
    {"auto clicker rápido ON",function()
        XL("acf")
        LO["acf"]=task.spawn(function()
            while LO["acf"]do
                local m=p:GetMouse()
                if m then
                    local t=m.Target
                    if t then pcall(function()t:Activate()end)end
                end
                task.wait(0.02)
            end
        end)
    end},
    {"auto clicker rápido OFF",function()XL("acf")end}
}}
D[#D+1]={"TECLAS",CC,{
    {"pular",function()local h=h(p)if h then h:ChangeState(Enum.HumanoidStateType.Jumping)end end},
    {"agachar",function()local h=h(p)if h then h:ChangeState(Enum.HumanoidStateType.Swimming)end end},
    {"sentar",function()local h=h(p)if h then h.Sit=true end end},
    {"levantar",function()local h=h(p)if h then h.Sit=false end end},
    {"deitar",function()local h=h(p)if h then h:ChangeState(Enum.HumanoidStateType.Physics)end end}
}}
D[#D+1]={"ARMAS CLÁSSICAS",VE,{
    {"espada clássica",function()
        pcall(function()
            local m=Instance.new("Model",p.Backpack)
            m.Name="Linked Sword"
            local hd=Instance.new("Part",m)hd.Name="Handle"hd.Size=Vector3.new(1,1,4)hd.Color=Color3.fromRGB(200,200,200)hd.Material=Enum.Material.Metal
        end)
    end},
    {"espada de fogo (fogo real)",function()local t=mkArm(">:D Espada Fogo Real",Vector3.new(0.5,7,0.5),Color3.fromRGB(255,60,0),Enum.Material.Neon,true,true)Instance.new("Fire",t.Handle)end},
    {"espada gigante",function()mkArm(">:D Espada Gigante",Vector3.new(1.5,20,1.5),Color3.fromRGB(255,0,100),Enum.Material.Neon,true,true)end},
    {"machado gigante",function()mkArm(">:D Machado Gigante",Vector3.new(5,5,1),Color3.fromRGB(150,75,0),Enum.Material.Wood,false,false)end},
    {"lança de fogo",function()mkArm(">:D Lança",Vector3.new(0.3,10,0.3),Color3.fromRGB(255,100,0),Enum.Material.Neon,true,true)end},
    {"cajado mágico",function()local t=mkArm(">:D Cajado",Vector3.new(0.4,8,0.4),Color3.fromRGB(200,0,255),Enum.Material.Neon,true,true)local p1=Instance.new("ParticleEmitter",t.Handle)p1.Texture="rbxassetid://243660364"p1.Rate=50;p1.Color=ColorSequence.new(Color3.fromRGB(255,0,255))end},
    {"limpar mochila",function()for _,x in pairs(p.Backpack:GetChildren())do if x:IsA("Tool")then x:Destroy()end end end}
}}
D[#D+1]={"CARRINHO",AM,{
    {"criar carro simples",function()
        local rr=r(p)if not rr then return end
        local b=rr.Position+rr.CFrame.LookVector*10
        local car=Instance.new("Model",workspace)car.Name=">:D Carro"
        local chassi=Instance.new("Part",car)chassi.Size=Vector3.new(4,2,8)chassi.Position=b+Vector3.new(0,2,0)chassi.Color=Color3.fromRGB(200,0,0)chassi.Anchored=false
        local topo=Instance.new("Part",car)topo.Size=Vector3.new(4,3,4)topo.Position=b+Vector3.new(0,4.5,-1)topo.Color=Color3.fromRGB(150,0,0)topo.Anchored=false
        local w1=Instance.new("Part",car)w1.Shape=Enum.PartType.Ball;w1.Size=Vector3.new(2,2,2);w1.Position=b+Vector3.new(-2,1,-3);w1.Color=Color3.fromRGB(30,30,30);w1.Anchored=false
        local w2=Instance.new("Part",car)w2.Shape=Enum.PartType.Ball;w2.Size=Vector3.new(2,2,2);w2.Position=b+Vector3.new(2,1,-3);w2.Color=Color3.fromRGB(30,30,30);w2.Anchored=false
        local w3=Instance.new("Part",car)w3.Shape=Enum.PartType.Ball;w3.Size=Vector3.new(2,2,2);w3.Position=b+Vector3.new(-2,1,3);w3.Color=Color3.fromRGB(30,30,30);w3.Anchored=false
        local w4=Instance.new("Part",car)w4.Shape=Enum.PartType.Ball;w4.Size=Vector3.new(2,2,2);w4.Position=b+Vector3.new(2,1,3);w4.Color=Color3.fromRGB(30,30,30);w3.Anchored=false
        local h=Instance.new("VehicleSeat",chassi)h.Name="Seat"
    end},
    {"criar avião",function()
        local rr=r(p)if not rr then return end
        local b=rr.Position+Vector3.new(0,20,0)
        PB(b,Vector3.new(4,4,20),Color3.fromRGB(220,220,220),Enum.Material.Metal)
        PB(b+Vector3.new(-8,0,0),Vector3.new(12,1,6),Color3.fromRGB(220,220,220),Enum.Material.Metal)
        PB(b+Vector3.new(8,0,0),Vector3.new(12,1,6),Color3.fromRGB(220,220,220),Enum.Material.Metal)
        PB(b+Vector3.new(0,0,-12),Vector3.new(1,6,4),Color3.fromRGB(220,220,220),Enum.Material.Metal)
    end}
}}
D[#D+1]={"FOGOS",LR,{
    {"fogos no céu",function()
        XL("fw")
        LO["fw"]=task.spawn(function()
            while LO["fw"]do
                local rr=r(p)if rr then
                    for i=1,5 do
                        local f=Instance.new("Part",workspace)
                        f.Size=Vector3.new(1,1,1)f.Shape=Enum.PartType.Ball
                        f.Position=rr.Position+Vector3.new(math.random(-30,30),math.random(50,80),math.random(-30,30))
                        f.Color=Color3.fromRGB(math.random(0,255),math.random(0,255),math.random(0,255))
                        f.Material=Enum.Material.Neon;f.Anchored=true;f.CanCollide=false
                        task.delay(2,function()f:Destroy()end)
                    end
                end
                task.wait(0.5)
            end
        end)
    end},
    {"parar fogos",function()XL("fw")end}
}}
D[#D+1]={"MÚSICA",MD,{
    {"tocar música 1",function()local s=Instance.new("Sound",workspace.CurrentCamera)s.SoundId="rbxassetid://1837879082"s.Volume=1;s:Play()end},
    {"tocar música 2",function()local s=Instance.new("Sound",workspace.CurrentCamera)s.SoundId="rbxassetid://1836314865"s.Volume=1;s:Play()end},
    {"tocar bass boost",function()local s=Instance.new("Sound",workspace.CurrentCamera)s.SoundId="rbxassetid://1312372417"s.Volume=1;s:Play()end},
    {"parar músicas",function()for _,x in pairs(workspace.CurrentCamera:GetChildren())do if x:IsA("Sound")then x:Stop()x:Destroy()end end end}
}}
D[#D+1]={"LUZ RGB",CC,{
    {"luz rgb na cabeça ON",function()
        XL("lrgb")
        LO["lrgb"]=task.spawn(function()
            while LO["lrgb"]do
                local cc=ch(p)
                if cc then
                    local hd=cc:FindFirstChild("Head")
                    if hd then
                        local l=hd:FindFirstChild("006RGB")or Instance.new("PointLight",hd)
                        l.Name="006RGB";l.Range=30;l.Brightness=5
                        l.Color=Color3.fromRGB(math.random(0,255),math.random(0,255),math.random(0,255))
                    end
                end
                task.wait(0.1)
            end
        end)
    end},
    {"luz rgb OFF",function()XL("lrgb")local cc=ch(p)if cc then local hd=cc:FindFirstChild("Head")if hd then local l=hd:FindFirstChild("006RGB")if l then l:Destroy()end end end end},
    {"luz branca forte",function()local cc=ch(p)if cc then local hd=cc:FindFirstChild("Head")if hd then local l=Instance.new("PointLight",hd)l.Range=50;l.Brightness=10;l.Color=Color3.new(1,1,1)end end end}
}}
D[#D+1]={"TROLL",MD,{
    {"chão é lava ON",function()XL("lava")LO["lava"]=task.spawn(function()while LO["lava"]do for _,x in pairs(workspace:GetDescendants())do if x:IsA("BasePart")and x.Material~=Enum.Material.Neon then x.Material=Enum.Material.Neon;x.Color=Color3.fromRGB(255,50,0)end end;task.wait(2)end end)end},
    {"chão é lava OFF",function()XL("lava")for _,x in pairs(workspace:GetDescendants())do if x:IsA("BasePart")then x.Material=Enum.Material.Plastic end end end},
    {"inverter cores ON",function()XL("inv")LO["inv"]=task.spawn(function()while LO["inv"]do for _,x in pairs(workspace:GetDescendants())do if x:IsA("BasePart")then local c=x.Color;x.Color=Color3.new(1-c.R,1-c.G,1-c.B)end end;task.wait(2)end end)end},
    {"inverter cores OFF",function()XL("inv")end},
    {"neon mundo ON",function()for _,x in pairs(workspace:GetDescendants())do if x:IsA("BasePart")then x.Material=Enum.Material.Neon end end end},
    {"plastic mundo",function()for _,x in pairs(workspace:GetDescendants())do if x:IsA("BasePart")then x.Material=Enum.Material.Plastic end end end}
}}
D[#D+1]={"CONSTRUÇÕES 2",AM,{
    {"ponte longa",function()
        local rr=r(p)if not rr then return end
        for i=1,30 do PB(rr.Position+rr.CFrame.LookVector*(i*5)+Vector3.new(0,-3,0),Vector3.new(5,1,5),Color3.fromRGB(150,75,0),Enum.Material.Wood)
            PB(rr.Position+rr.CFrame.LookVector*(i*5)+Vector3.new(-1,-3,-2),Vector3.new(.5,4,.5),Color3.fromRGB(120,60,0),Enum.Material.Wood)
            PB(rr.Position+rr.CFrame.LookVector*(i*5)+Vector3.new(1,-3,2),Vector3.new(.5,4,.5),Color3.fromRGB(120,60,0),Enum.Material.Wood)
        end
    end},
    {"pirâmide egípcia",function()
        local rr=r(p)if not rr then return end
        local b=rr.Position+rr.CFrame.LookVector*25
        for y=0,12 do
            local s=12-y
            for x=-s,s do for z=-s,s do
                if math.abs(x)==s or math.abs(z)==s or y==12 then
                    PB(b+Vector3.new(x*3,y*3,z*3),Vector3.new(3,3,3),Color3.fromRGB(220,180,80),Enum.Material.Sandstone)
                end
            end end
        end
    end},
    {"estátua dourada",function()
        local rr=r(p)if not rr then return end
        local b=rr.Position+rr.CFrame.LookVector*15
        PB(b+Vector3.new(0,1,0),Vector3.new(6,2,6),Color3.fromRGB(200,150,0),Enum.Material.Metal)
        PB(b+Vector3.new(0,5,0),Vector3.new(4,6,4),Color3.fromRGB(255,215,0),Enum.Material.Metal)
        PB(b+Vector3.new(0,9,0),Vector3.new(3,3,3),Color3.fromRGB(255,215,0),Enum.Material.Metal)
        local cr=PB(b+Vector3.new(0,11,0),Vector3.new(4,1,4),Color3.fromRGB(255,255,0),Enum.Material.Neon)
    end},
    {"arco do triunfo",function()
        local rr=r(p)if not rr then return end
        local b=rr.Position+rr.CFrame.LookVector*20
        for i=1,12 do
            local ang=math.rad(i*15)
            PB(b+Vector3.new(math.cos(ang)*8,i*2,0),Vector3.new(2,2,3),Color3.fromRGB(220,220,220),Enum.Material.Concrete)
            PB(b+Vector3.new(math.cos(ang)*8+1,i*2,0),Vector3.new(2,2,3),Color3.fromRGB(220,220,220),Enum.Material.Concrete)
        end
    end},
    {"spawn de blocos coloridos",function()
        local rr=r(p)if not rr then return end
        for i=1,30 do
            PB(rr.Position+Vector3.new(math.random(-30,30),math.random(5,30),math.random(-30,30)),Vector3.new(3,3,3),Color3.fromRGB(math.random(0,255),math.random(0,255),math.random(0,255)),Enum.Material.Neon)
        end
    end}
}}
D[#D+1]={"PERSONAGEM",RX,{
    {"face feliz",function()local cc=ch(p)local hd=cc and cc:FindFirstChild("Head")if hd then local f=hd:FindFirstChildOfClass("Decal")if f then f:Destroy()end end end},
    {"cabeça gigante",function()A.HD(p,Vector3.new(8,8,8))end},
    {"cabeça pequena",function()A.HD(p,Vector3.new(0.5,0.5,0.5))end},
    {"corpo pequeno",function()A.SZ(p,0.3)end},
    {"corpo gigante",function()A.SZ(p,4)end},
    {"braços gigantes",function()
        local cc=ch(p)if not cc then return end
        for _,x in pairs(cc:GetChildren())do
            if x.Name=="Left Arm"or x.Name=="Right Arm"then x.Size=Vector3.new(4,8,4)end
        end
    end},
    {"pernas gigantes",function()
        local cc=ch(p)if not cc then return end
        for _,x in pairs(cc:GetChildren())do
            if x.Name=="Left Leg"or x.Name=="Right Leg"then x.Size=Vector3.new(4,8,4)end
        end
    end},
    {"restaurar corpo",function()p.Character:BreakJoints()end}
}}
D[#D+1]={"EFEITOS",RX,{
    {"partículas na cabeça ON",function()
        local cc=ch(p)local hd=cc and cc:FindFirstChild("Head")
        if hd and not hd:FindFirstChild("006P")then
            local pt=Instance.new("ParticleEmitter",hd)
            pt.Name="006P";pt.Texture="rbxassetid://243660364";pt.Rate=30
            pt.Color=ColorSequence.new(Color3.fromRGB(255,0,255))
            pt.Size=NumberSequence.new(0.5);pt.Lifetime=NumberRange.new(1,2)
        end
    end},
    {"partículas na cabeça OFF",function()local cc=ch(p)local hd=cc and cc:FindFirstChild("Head")if hd then local pt=hd:FindFirstChild("006P")if pt then pt:Destroy()end end end},
    {"rastro brilhante ON",function()
        XL("trail")
        LO["trail"]=task.spawn(function()
            while LO["trail"]do
                local rr=r(p)
                if rr then
                    local pt=Instance.new("Part",workspace)
                    pt.Size=Vector3.new(1,1,1)pt.Shape=Enum.PartType.Ball
                    pt.Position=rr.Position;pt.Color=Color3.fromRGB(255,0,255)
                    pt.Material=Enum.Material.Neon;pt.Anchored=true;pt.CanCollide=false
                    task.delay(1,function()pt:Destroy()end)
                end
                task.wait(0.05)
            end
        end)
    end},
    {"rastro brilhante OFF",function()XL("trail")end},
    {"aura fogo + luz",function()A.BN(p);local rr=r(p)if rr and not rr:FindFirstChild("006L")then local l=Instance.new("PointLight",rr)l.Color=Color3.fromRGB(255,100,0)l.Range=25;l.Brightness=4;l.Name="006L"end end}
}}
D[#D+1]={"TROLL PEÇAS",MD,{
    {"congelar TODOS do servidor",function()fa("all",A.FR)end},
    {"deixar todos pequenos",function()fa("all",function(x)A.SZ(x,.3)end)end},
    {"deixar todos gigantes",function()fa("all",function(x)A.SZ(x,3)end)end},
    {"deixar todos invisíveis",function()fa("all",function(x)A.TR(x,1)end)end},
    {"deixar todos visíveis",function()fa("all",function(x)A.TR(x,0)end)end},
    {"dar coroa em todos",function()
        for _,pl in ipairs(P:GetPlayers())do
            local cc=ch(pl)local hd=cc and cc:FindFirstChild("Head")
            if hd and not cc:FindFirstChild("006Cr")then
                local x=Instance.new("Part",cc)x.Size=Vector3.new(2,1,2)x.Color=Color3.fromRGB(255,215,0)x.Material=Enum.Material.Neon;x.CanCollide=false;x.Name="006Cr"
                local w=Instance.new("Weld",x)w.Part1=x;w.Part0=hd;w.C0=CFrame.new(0,1,0)
            end
        end
    end},
    {"tirar coroa de todos",function()for _,pl in ipairs(P:GetPlayers())do local cc=ch(pl)local k=cc and cc:FindFirstChild("006Cr")if k then k:Destroy()end end end}
}}-- ===== BLOCO 6 =====
D[#D+1]={"AIMBOT",VE,{
    {"aimbot básico ON",function()
        XL("aim")
        LO["aim"]=task.spawn(function()
            while LO["aim"]do
                local alvo=GT("n")[1]
                if alvo and alvo.Character then
                    local cam=workspace.CurrentCamera
                    local hd=alvo.Character:FindFirstChild("Head")or alvo.Character:FindFirstChild("HumanoidRootPart")
                    if hd then cam.CFrame=CFrame.new(cam.CFrame.Position,hd.Position)end
                end
                task.wait(0.05)
            end
        end)
    end},
    {"aimbot OFF",function()XL("aim")end},
    {"aimbot no mais próximo ON",function()
        XL("aimN")
        LO["aimN"]=task.spawn(function()
            while LO["aimN"]do
                local l=GT("e")
                if #l>0 then
                    local cam=workspace.CurrentCamera
                    local alvo=l[math.random(#l)]
                    if alvo.Character then
                        local hd=alvo.Character:FindFirstChild("Head")
                        if hd then cam.CFrame=CFrame.new(cam.CFrame.Position,hd.Position)end
                    end
                end
                task.wait(0.15)
            end
        end)
    end},
    {"aimbot no mais próximo OFF",function()XL("aimN")end}
}}
D[#D+1]={"HITBOX",VE,{
    {"hitbox grande em mim",function()
        local cc=ch(p)if not cc then return end
        for _,x in pairs(cc:GetChildren())do
            if x:IsA("BasePart")then x.Size=x.Size*1.5 end
        end
    end},
    {"hitbox pequena em mim",function()
        local cc=ch(p)if not cc then return end
        for _,x in pairs(cc:GetChildren())do
            if x:IsA("BasePart")then x.Size=x.Size*0.6 end
        end
    end},
    {"hitbox grande nos inimigos",function()fa("e",function(x)local cc=ch(x)if cc then for _,y in pairs(cc:GetChildren())do if y:IsA("BasePart")then y.Size=y.Size*1.5 end end end end)end},
    {"resetar hitbox",function()p.Character:BreakJoints()end}
}}
D[#D+1]={"SPEED GLITCH",AZ,{
    {"super pulo ON",function()
        local hh=h(p)if hh then hh.JumpPower=500;hh.UseJumpPower=true end
        U.JumpRequest:Connect(function()local hh2=h(p)if hh2 then hh2:ChangeState(Enum.HumanoidStateType.Jumping)end end)
    end},
    {"wall hop ON",function()
        XL("wall")
        LO["wall"]=task.spawn(function()
            while LO["wall"]do
                local hh=h(p)
                if hh and hh.MoveDirection.Magnitude>0 then hh:ChangeState(Enum.HumanoidStateType.Jumping)end
                task.wait(0.3)
            end
        end)
    end},
    {"wall hop OFF",function()XL("wall")end},
    {"spam pulo ON",function()
        XL("spamj")
        LO["spamj"]=task.spawn(function()
            while LO["spamj"]do
                local hh=h(p)
                if hh then hh:ChangeState(Enum.HumanoidStateType.Jumping)end
                task.wait(0.1)
            end
        end)
    end},
    {"spam pulo OFF",function()XL("spamj")end}
}}
D[#D+1]={"ANTI-TROLL",CC,{
    {"anti-fling ON",function()
        XL("antiF")
        LO["antiF"]=task.spawn(function()
            while LO["antiF"]do
                local rr=r(p)
                if rr then
                    local v=rr.Velocity
                    if v.Magnitude>500 then rr.Velocity=Vector3.new(0,0,0)end
                end
                task.wait(0.1)
            end
        end)
    end},
    {"anti-fling OFF",function()XL("antiF")end},
    {"anti-freeze ON",function()
        XL("antiZ")
        LO["antiZ"]=task.spawn(function()
            while LO["antiZ"]do
                local rr=r(p)
                if rr and rr.Anchored then rr.Anchored=false end
                task.wait(0.2)
            end
        end)
    end},
    {"anti-freeze OFF",function()XL("antiZ")end},
    {"anti-afk+kick ON",function()
        XL("afk2")
        LO["afk2"]=task.spawn(function()
            while LO["afk2"]do
                local v=p:FindFirstChildOfClass("VirtualUser")
                if v then v:Destroy()end
                task.wait(15)
            end
        end)
    end},
    {"anti-afk OFF",function()XL("afk2")end}
}}
D[#D+1]={"JOGADOR",CY,{
    {"salvar posição",function()local rr=r(p)if rr then _G.PosSalva=rr.CFrame;print(">:D Posição salva!")end end},
    {"voltar pra posição",function()local rr=r(p)if rr and _G.PosSalva then rr.Velocity=Vector3.new(0,0,0)rr.CFrame=_G.PosSalva end end},
    {"espectar próximo",function()
        local a=GT("n")[1]
        if a and a.Character then
            local hh=a.Character:FindFirstChildOfClass("Humanoid")
            if hh then workspace.CurrentCamera.CameraSubject=hh end
        end
    end},
    {"voltar câmera",function()local hh=h(p)if hh then workspace.CurrentCamera.CameraSubject=hh end end},
    {"espectar aleatório",function()
        local l=GT("e")
        if #l>0 then
            local a=l[math.random(#l)]
            if a and a.Character then
                local hh=a.Character:FindFirstChildOfClass("Humanoid")
                if hh then workspace.CurrentCamera.CameraSubject=hh end
            end
        end
    end},
    {"seguir próximo",function()
        XL("follow")
        LO["follow"]=task.spawn(function()
            while LO["follow"]do
                local a=GT("n")[1]
                if a and a.Character then
                    local tr=r(a)
                    if tr then A.TPA(a)end
                end
                task.wait(0.3)
            end
        end)
    end},
    {"parar de seguir",function()XL("follow")end}
}}
D[#D+1]={"ARMAS EXTRAS",VE,{
    {"pistola dourada",function()mkArm(">:D Pistola",Vector3.new(0.3,0.8,1.5),Color3.fromRGB(255,215,0),Enum.Material.Metal,false,false)end},
    {"rifle de precisão",function()mkArm(">:D Sniper",Vector3.new(0.3,0.6,4),Color3.fromRGB(20,20,20),Enum.Material.Metal,false,false)end},
    {"bazuca",function()mkArm(">:D Bazuca",Vector3.new(1,1,4),Color3.fromRGB(100,50,0),Enum.Material.Metal,false,false)end},
    {"minigun",function()mkArm(">:D Minigun",Vector3.new(1,1,3),Color3.fromRGB(60,60,60),Enum.Material.Metal,false,false)end},
    {"adaga venenosa",function()local t=mkArm(">:D Adaga",Vector3.new(0.2,2,0.2),Color3.fromRGB(0,255,50),Enum.Material.Neon,true,true)end},
    {"escudo de energia",function()mkArm(">:D Escudo",Vector3.new(4,5,0.5),Color3.fromRGB(0,255,255),Enum.Material.Neon,true,false)end},
    {"cajado de fogo",function()local t=mkArm(">:D Cajado Fogo",Vector3.new(0.4,8,0.4),Color3.fromRGB(255,100,0),Enum.Material.Neon,true,true)Instance.new("Fire",t.Handle)end},
    {"cajado de gelo",function()local t=mkArm(">:D Cajado Gelo",Vector3.new(0.4,8,0.4),Color3.fromRGB(100,200,255),Enum.Material.Ice,true,true)end},
    {"limpar mochila",function()for _,x in pairs(p.Backpack:GetChildren())do if x:IsA("Tool")then x:Destroy()end end end}
}}
D[#D+1]={"VEÍCULOS",AM,{
    {"carro vermelho",function()
        local rr=r(p)if not rr then return end
        local b=rr.Position+rr.CFrame.LookVector*12
        local car=Instance.new("Model",workspace)car.Name=">:D Carro"
        local ch=Instance.new("Part",car)ch.Size=Vector3.new(4,2,8)ch.Position=b+Vector3.new(0,2,0)ch.Color=Color3.fromRGB(220,0,0)ch.Material=Enum.Material.Metal
        local top=Instance.new("Part",car)top.Size=Vector3.new(4,3,4)top.Position=b+Vector3.new(0,4.5,-1)top.Color=Color3.fromRGB(150,0,0)top.Material=Enum.Material.Metal
        for _,pos in ipairs({{-2,1,-3},{2,1,-3},{-2,1,3},{2,1,3}})do
            local w=Instance.new("Part",car)w.Shape=Enum.PartType.Ball;w.Size=Vector3.new(2,2,2);w.Position=b+Vector3.new(pos[1],pos[2],pos[3]);w.Color=Color3.fromRGB(30,30,30);w.Material=Enum.Material.Rubber
        end
        local seat=Instance.new("VehicleSeat",ch)seat.Name="Seat"
    end},
    {"carro azul",function()
        local rr=r(p)if not rr then return end
        local b=rr.Position+rr.CFrame.LookVector*12
        local car=Instance.new("Model",workspace)car.Name=">:D Carro"
        local ch=Instance.new("Part",car)ch.Size=Vector3.new(4,2,8)ch.Position=b+Vector3.new(0,2,0)ch.Color=Color3.fromRGB(0,100,255)ch.Material=Enum.Material.Metal
        local top=Instance.new("Part",car)top.Size=Vector3.new(4,3,4)top.Position=b+Vector3.new(0,4.5,-1)top.Color=Color3.fromRGB(0,60,180)top.Material=Enum.Material.Metal
        for _,pos in ipairs({{-2,1,-3},{2,1,-3},{-2,1,3},{2,1,3}})do
            local w=Instance.new("Part",car)w.Shape=Enum.PartType.Ball;w.Size=Vector3.new(2,2,2);w.Position=b+Vector3.new(pos[1],pos[2],pos[3]);w.Color=Color3.fromRGB(30,30,30);w.Material=Enum.Material.Rubber
        end
        local seat=Instance.new("VehicleSeat",ch)seat.Name="Seat"
    end},
    {"moto",function()
        local rr=r(p)if not rr then return end
        local b=rr.Position+rr.CFrame.LookVector*10
        local m=Instance.new("Model",workspace)m.Name=">:D Moto"
        local ch=Instance.new("Part",m)ch.Size=Vector3.new(2,1,5)ch.Position=b+Vector3.new(0,2,0)ch.Color=Color3.fromRGB(200,0,100)
        local w1=Instance.new("Part",m)w1.Shape=Enum.PartType.Ball;w1.Size=Vector3.new(2,2,2);w1.Position=b+Vector3.new(0,1,-1.5)w1.Color=Color3.fromRGB(30,30,30)
        local w2=Instance.new("Part",m)w2.Shape=Enum.PartType.Ball;w2.Size=Vector3.new(2,2,2);w2.Position=b+Vector3.new(0,1,1.5)w2.Color=Color3.fromRGB(30,30,30)
        local s=Instance.new("VehicleSeat",ch)
    end}
}}
D[#D+1]={"NPC",MD,{
    {"spawnar zumbi",function()
        local rr=r(p)if not rr then return end
        local m=Instance.new("Model",workspace)m.Name=">:D NPC"
        local torso=Instance.new("Part",m)torso.Size=Vector3.new(2,2,1)torso.Position=rr.Position+rr.CFrame.LookVector*10;torso.Color=Color3.fromRGB(0,150,0)
        local hd=Instance.new("Part",m)hd.Size=Vector3.new(1.5,1.5,1.5)hd.Position=torso.Position+Vector3.new(0,2,0);hd.Color=Color3.fromRGB(0,200,0)
        local hum=Instance.new("Humanoid",m)
        m.PrimaryPart=torso
    end},
    {"spawnar robô",function()
        local rr=r(p)if not rr then return end
        local m=Instance.new("Model",workspace)m.Name=">:D NPC"
        local torso=Instance.new("Part",m)torso.Size=Vector3.new(2,2,1)torso.Position=rr.Position+rr.CFrame.LookVector*10;torso.Color=Color3.fromRGB(150,150,150);torso.Material=Enum.Material.Metal
        local hd=Instance.new("Part",m)hd.Size=Vector3.new(1.5,1.5,1.5)hd.Position=torso.Position+Vector3.new(0,2,0);hd.Color=Color3.fromRGB(100,100,100);hd.Material=Enum.Material.Metal
        local hum=Instance.new("Humanoid",m)
        m.PrimaryPart=torso
    end},
    {"spawnar fantasma",function()
        local rr=r(p)if not rr then return end
        local m=Instance.new("Model",workspace)m.Name=">:D NPC"
        local torso=Instance.new("Part",m)torso.Size=Vector3.new(2,3,1)torso.Position=rr.Position+rr.CFrame.LookVector*10;torso.Color=Color3.fromRGB(255,255,255);torso.Transparency=0.5
        local hd=Instance.new("Part",m)hd.Size=Vector3.new(2,2,2)hd.Position=torso.Position+Vector3.new(0,2.5,0);hd.Color=Color3.fromRGB(255,255,255);hd.Transparency=0.5
        local hum=Instance.new("Humanoid",m)
        m.PrimaryPart=torso
    end},
    {"apagar todos NPCs",function()for _,x in pairs(workspace:GetChildren())do if x:IsA("Model")and x.Name==">:D NPC"then x:Destroy()end end end}
}}
D[#D+1]={"GRAVIDADE",AZ,{
    {"grav -10 (voar pra cima)",function()workspace.Gravity=-10 end},
    {"grav 0",function()workspace.Gravity=0 end},
    {"grav 30",function()workspace.Gravity=30 end},
    {"grav 100",function()workspace.Gravity=100 end},
    {"grav 500 (pesado)",function()workspace.Gravity=500 end},
    {"grav 1000 (super pesado)",function()workspace.Gravity=1000 end},
    {"grav normal",function()workspace.Gravity=196.2 end}
}}
D[#D+1]={"TAMANHO MUNDO",RX,{
    {"mundo pequeno",function()for _,x in pairs(workspace:GetDescendants())do if x:IsA("BasePart")and not x:FindFirstChildOfClass("Humanoid")and x.Name~="Baseplate"then x.Size=x.Size*0.8 end end end},
    {"mundo grande",function()for _,x in pairs(workspace:GetDescendants())do if x:IsA("BasePart")and not x:FindFirstChildOfClass("Humanoid")and x.Name~="Baseplate"then x.Size=x.Size*1.2 end end end},
    {"deixar mundo transparente",function()for _,x in pairs(workspace:GetDescendants())do if x:IsA("BasePart")then x.Transparency=0.7 end end end},
    {"restaurar transparência",function()for _,x in pairs(workspace:GetDescendants())do if x:IsA("BasePart")then x.Transparency=0 end end end}
}}
D[#D+1]={"EFEITOS 2",RX,{
    {"aura de raio",function()
        local rr=r(p)if rr and not rr:FindFirstChild("006T")then
            local pt=Instance.new("ParticleEmitter",rr)
            pt.Name="006T";pt.Texture="rbxassetid://243660364";pt.Rate=50
            pt.Color=ColorSequence.new(Color3.fromRGB(0,150,255))
            pt.Size=NumberSequence.new(1);pt.Lifetime=NumberRange.new(0.3,0.6)
            pt.Speed=NumberRange.new(20,40)
        end
    end},
    {"aura de raio OFF",function()local rr=r(p)if rr then local pt=rr:FindFirstChild("006T")if pt then pt:Destroy()end end end},
    {"aura de fogo ON",function()
        local rr=r(p)if rr and not rr:FindFirstChild("006FireA")then
            local a=Instance.new("Fire",rr)a.Size=15;a.Name="006FireA"
        end
    end},
    {"aura de fogo OFF",function()local rr=r(p)if rr then local a=rr:FindFirstChild("006FireA")if a then a:Destroy()end end end},
    {"aura de gelo ON",function()
        local rr=r(p)if rr and not rr:FindFirstChild("006IceA")then
            local pt=Instance.new("ParticleEmitter",rr)
            pt.Name="006IceA";pt.Texture="rbxassetid://243660364";pt.Rate=30
            pt.Color=ColorSequence.new(Color3.fromRGB(150,220,255))
            pt.Size=NumberSequence.new(0.8)
        end
    end},
    {"aura de gelo OFF",function()local rr=r(p)if rr then local pt=rr:FindFirstChild("006IceA")if pt then pt:Destroy()end end end},
    {"aura arco-íris ON",function()
        XL("auraR")
        LO["auraR"]=task.spawn(function()
            while LO["auraR"]do
                local rr=r(p)
                if rr then
                    local pt=rr:FindFirstChild("006Rain")or Instance.new("ParticleEmitter",rr)
                    pt.Name="006Rain";pt.Texture="rbxassetid://243660364";pt.Rate=40
                    pt.Color=ColorSequence.new(Color3.fromRGB(math.random(0,255),math.random(0,255),math.random(0,255)))
                    pt.Size=NumberSequence.new(0.8)
                end
                task.wait(0.2)
            end
        end)
    end},
    {"aura arco-íris OFF",function()XL("auraR")local rr=r(p)if rr then local pt=rr:FindFirstChild("006Rain")if pt then pt:Destroy()end end end}
}}
D[#D+1]={"ANTI-BAN",PR,{
    {"bloquear kick",function()
        for _,x in pairs(game:GetService("CoreGui"):GetChildren())do
            if x.Name=="RobloxPromptGui"then x:Destroy()end
        end
        print(">:D Anti-kick ativado!")
    end},
    {"esconder GUI",function()
        local pg=p:WaitForChild("PlayerGui")
        for _,x in pairs(pg:GetChildren())do
            if x:IsA("ScreenGui")and x.Name~="P006"then x.Enabled=false end
        end
    end},
    {"mostrar GUI",function()
        local pg=p:WaitForChild("PlayerGui")
        for _,x in pairs(pg:GetChildren())do
            if x:IsA("ScreenGui")then x.Enabled=true end
        end
    end}
}}
D[#D+1]={"INFO",CC,{
    {"listar jogadores",function()for _,x in ipairs(P:GetPlayers())do print(x.Name,x==p and"[EU]"or(al(x)and"[ALIADO]"or"[INIMIGO]"))end end},
    {"info do personagem",function()
        local cc=ch(p)
        if cc then
            print("Personagem:",cc.Name)
            for _,x in pairs(cc:GetChildren())do
                if x:IsA("BasePart")then print("  ",x.Name,x.Size)end
            end
        end
    end},
    {"meu ping",function()print("Ping:",math.floor(p:GetNetworkPing()*1000).."ms")end},
    {"contar partes do mapa",function()
        local n=0
        for _,x in pairs(workspace:GetDescendants())do if x:IsA("BasePart")then n=n+1 end end
        print("Total de partes:",n)
    end}
}}
D[#D+1]={"PORTAL GUN 2",PT,{
    {"dar portal gun",function()mkPortal()end},
    {"teletransporte rápido (próximo)",function()local a=GT("n")[1]if a then A.TPA(a)end end},-- ===== BLOCO 7 =====
D[#D+1]={"AUTO FARM",VC,{
    {"auto dano no mais próximo ON",function()
        XL("af")
        LO["af"]=task.spawn(function()
            while LO["af"]do
                local a=GT("n")[1]
                if a then
                    local hh=h(a)
                    if hh then hh:TakeDamage(10)end
                end
                task.wait(0.2)
            end
        end)
    end},
    {"auto dano OFF",function()XL("af")end},
    {"auto colher (tocar tudo) ON",function()
        XL("acol")
        LO["acol"]=task.spawn(function()
            while LO["acol"]do
                local rr=r(p)
                if rr then
                    for _,x in pairs(workspace:GetPartBoundsInRadius(rr.Position,15))do
                        if x:IsA("BasePart")then pcall(function()x:Activate()end)end
                    end
                end
                task.wait(0.3)
            end
        end)
    end},
    {"auto colher OFF",function()XL("acol")end},
    {"auto coletar tudo",function()
        for _,x in pairs(workspace:GetDescendants())do
            if x:IsA("Tool")then x.Parent=p.Backpack end
            if x:IsA("Accessory")then x.Parent=p.Character end
        end
    end}
}}
D[#D+1]={"ANTI-GRAVIDADE",AZ,{
    {"flutuar ON",function()
        XL("flu")
        LO["flu"]=task.spawn(function()
            while LO["flu"]do
                local rr=r(p)
                if rr then
                    local b=rr:FindFirstChild("006Float")or Instance.new("BodyForce",rr)
                    b.Name="006Float";b.Force=Vector3.new(0,workspace.Gravity*100,0)
                end
                task.wait(0.1)
            end
        end)
    end},
    {"flutuar OFF",function()XL("flu")local rr=r(p)if rr then local b=rr:FindFirstChild("006Float")if b then b:Destroy()end end end},
    {"cair devagar ON",function()
        XL("fall")
        LO["fall"]=task.spawn(function()
            while LO["fall"]do
                local rr=r(p)
                if rr then rr.Velocity=Vector3.new(rr.Velocity.X,math.max(rr.Velocity.Y,-5),rr.Velocity.Z)end
                task.wait()
            end
        end)
    end},
    {"cair devagar OFF",function()XL("fall")end}
}}
D[#D+1]={"ARMAS LENDÁRIAS",VE,{
    {"excalibur",function()
        local t=mkArm(">:D Excalibur",Vector3.new(0.6,10,0.6),Color3.fromRGB(255,215,0),Enum.Material.Neon,true,true)
        local l=Instance.new("PointLight",t.Handle)l.Color=Color3.fromRGB(255,215,0)l.Range=25;l.Brightness=5
    end},
    {"espada do caos",function()
        local t=mkArm(">:D Caos",Vector3.new(0.6,9,0.6),Color3.fromRGB(255,0,0),Enum.Material.Neon,true,true)
        local l=Instance.new("PointLight",t.Handle)l.Color=Color3.fromRGB(255,0,0)l.Range=25;l.Brightness=5
    end},
    {"espada do gelo eterno",function()
        local t=mkArm(">:D Gelo Eterno",Vector3.new(0.6,9,0.6),Color3.fromRGB(100,220,255),Enum.Material.Ice,true,true)
        local l=Instance.new("PointLight",t.Handle)l.Color=Color3.fromRGB(100,220,255)l.Range=25;l.Brightness=5
    end},
    {"espada do trovão",function()
        local t=mkArm(">:D Trovão",Vector3.new(0.6,9,0.6),Color3.fromRGB(255,255,100),Enum.Material.Neon,true,true)
        local pt=Instance.new("ParticleEmitter",t.Handle)pt.Texture="rbxassetid://243660364"pt.Rate=80;pt.Color=ColorSequence.new(Color3.fromRGB(255,255,100))
    end},
    {"espada do vazio",function()
        local t=mkArm(">:D Vazio",Vector3.new(0.6,9,0.6),Color3.fromRGB(50,0,80),Enum.Material.Neon,true,true)
        local pt=Instance.new("ParticleEmitter",t.Handle)pt.Texture="rbxassetid://243660364"pt.Rate=50;pt.Color=ColorSequence.new(Color3.fromRGB(150,0,255))
    end},
    {"espada do arco-íris",function()
        local t=mkArm(">:D Arco-Íris",Vector3.new(0.6,9,0.6),Color3.fromRGB(255,0,255),Enum.Material.Neon,true,true)
        XL("rainbowSword")
        LO["rainbowSword"]=task.spawn(function()
            while LO["rainbowSword"]do
                if t and t.Parent then
                    t.Handle.Color=Color3.fromRGB(math.random(0,255),math.random(0,255),math.random(0,255))
                end
                task.wait(0.1)
            end
        end)
    end},
    {"parar rainbow sword",function()XL("rainbowSword")end}
}}
D[#D+1]={"CONSTRUÇÕES TOP",AM,{
    {"arranha-céu",function()
        local rr=r(p)if not rr then return end
        local b=rr.Position+rr.CFrame.LookVector*20
        for y=0,40 do
            for x=-3,3 do
                for z=-3,3 do
                    if math.abs(x)==3 or math.abs(z)==3 then
                        local cor=Color3.fromRGB(120+y*3,120+y*3,130+y*3)
                        PB(b+Vector3.new(x*4,y*4,z*4),Vector3.new(4,4,4),cor,Enum.Material.Glass)
                    end
                end
            end
        end
    end},
    {"estádio",function()
        local rr=r(p)if not rr then return end
        local b=rr.Position+rr.CFrame.LookVector*40
        for i=1,40 do
            local ang=math.rad(i*9)
            for y=0,3 do
                PB(b+Vector3.new(math.cos(ang)*25,y*4,math.sin(ang)*25),Vector3.new(4,4,6),Color3.fromRGB(180,180,180),Enum.Material.Concrete)
            end
        end
    end},
    {"estátua do dragão",function()
        local rr=r(p)if not rr then return end
        local b=rr.Position+rr.CFrame.LookVector*20
        PB(b,Vector3.new(6,3,6),Color3.fromRGB(80,80,80),Enum.Material.Rock)
        PB(b+Vector3.new(0,4,0),Vector3.new(4,4,4),Color3.fromRGB(100,100,100),Enum.Material.Rock)
        PB(b+Vector3.new(0,8,0),Vector3.new(3,3,3),Color3.fromRGB(120,120,120),Enum.Material.Rock)
        PB(b+Vector3.new(0,11,-1),Vector3.new(2,2,3),Color3.fromRGB(140,140,140),Enum.Material.Rock)
    end},
    {"obelisco",function()
        local rr=r(p)if not rr then return end
        local b=rr.Position+rr.CFrame.LookVector*15
        for y=0,15 do
            PB(b+Vector3.new(0,y*4,0),Vector3.new(4,4,4),Color3.fromRGB(240,240,240),Enum.Material.Marble)
        end
        for i=0,3 do
            PB(b+Vector3.new(0,64+i*2,0),Vector3.new(4-i,2,4-i),Color3.fromRGB(255,215,0),Enum.Material.Metal)
        end
    end},
    {"palácio",function()
        local rr=r(p)if not rr then return end
        local b=rr.Position+rr.CFrame.LookVector*30
        -- base grande
        for x=-8,8 do for z=-8,8 do PB(b+Vector3.new(x*4,0,z*4),Vector3.new(4,1,4),Color3.fromRGB(240,230,200),Enum.Material.Marble)end end
        -- paredes
        for y=1,5 do
            for x=-8,8 do
                if math.abs(x)==8 then for z=-7,7 do PB(b+Vector3.new(x*4,y*4,z*4),Vector3.new(1,4,4),Color3.fromRGB(220,200,170),Enum.Material.Marble)end end
            end
            for z=-8,8 do
                if math.abs(z)==8 then for x=-7,7 do PB(b+Vector3.new(x*4,y*4,z*4),Vector3.new(4,4,1),Color3.fromRGB(220,200,170),Enum.Material.Marble)end end
            end
        end
        -- telhado dourado
        for i=0,5 do
            local s=8-i*1.3
            for x=-8,8 do for z=-8,8 do
                if math.abs(x)<=s and math.abs(z)<=s then
                    PB(b+Vector3.new(x*4,20+i*2,z*4),Vector3.new(4,2,4),Color3.fromRGB(255,215,0),Enum.Material.Metal)
                end
            end end
        end
    end}
}}
D[#D+1]={"MINI MAPA",CC,{
    {"abrir mapa",function()
        local pg=p:WaitForChild("PlayerGui")
        local old=pg:FindFirstChild("006Mapa")
        if old then old:Destroy()end
        local g=Instance.new("ScreenGui",pg)g.Name="006Mapa";g.ResetOnSpawn=false
        local fr=Instance.new("Frame",g)fr.Size=UDim2.new(0,200,0,200)fr.Position=UDim2.new(1,-210,0,10)fr.BackgroundColor3=Color3.fromRGB(15,0,25)fr.BorderSizePixel=0
        Instance.new("UICorner",fr).CornerRadius=UDim.new(0,8)
        local t=Instance.new("TextLabel",fr)t.Size=UDim2.new(1,0,0,24)t.BackgroundColor3=Color3.fromRGB(150,0,0)t.Text=">:D Mapa >:D"t.TextColor3=Color3.new(1,1,1)t.TextScaled=true;t.Font=Enum.Font.GothamBold
        local text=Instance.new("TextLabel",fr)text.Size=UDim2.new(1,-8,1,-32)text.Position=UDim2.new(0,4,0,28)text.BackgroundTransparency=1;text.TextColor3=Color3.fromRGB(200,255,200)text.TextScaled=true;text.Font=Enum.Font.Code;text.TextYAlignment=Enum.TextYAlignment.Top
        XL("mapa")
        LO["mapa"]=task.spawn(function()
            while LO["mapa"]do
                local s=""
                for _,x in ipairs(P:GetPlayers())do
                    if x~=p and x.Character then
                        local pos=x.Character:FindFirstChild("HumanoidRootPart")
                        if pos then
                            s=s..x.Name:sub(1,6).." "..math.floor(pos.Position.X)..","..math.floor(pos.Position.Z).."\n"
                        end
                    end
                end
                text.Text=s
                task.wait(1)
            end
        end)
    end},
    {"fechar mapa",function()XL("mapa")local pg=p:WaitForChild("PlayerGui")local g=pg:FindFirstChild("006Mapa")if g then g:Destroy()end end}
}}
D[#D+1]={"FÍSICA LOUCA",MD,{
    {"pular a 1000",function()local hh=h(p)if hh then hh.JumpPower=1000;hh.UseJumpPower=true end end},
    {"escorregar ON",function()
        local cc=ch(p)if cc then for _,x in pairs(cc:GetDescendants())do if x:IsA("BasePart")then x.CustomPhysicalProperties=PhysicalProperties.new(0.01,0.01,0.01,1,1)end end end
    end},
    {"escorregar OFF",function()p.Character:BreakJoints()end},
    {"elástico ON",function()
        local cc=ch(p)if cc then for _,x in pairs(cc:GetDescendants())do if x:IsA("BasePart")then x.CustomPhysicalProperties=PhysicalProperties.new(0.3,3,0.5,1,1)end end end
    end},
    {"elástico OFF",function()p.Character:BreakJoints()end},
    {"super leve",function()
        local cc=ch(p)if cc then for _,x in pairs(cc:GetDescendants())do if x:IsA("BasePart")then x.Massless=true end end end
    end}
}}
D[#D+1]={"PODERES",RX,{
    {"invisível + speed",function()
        A.TR(p,1)A.SP(p,100)
    end},
    {"invisível + noclip",function()
        A.TR(p,1)
        XL("ncP")
        LO["ncP"]=task.spawn(function()
            while LO["ncP"]do
                local cc=ch(p)
                if cc then for _,y in pairs(cc:GetDescendants())do if y:IsA("BasePart")then y.CanCollide=false end end end
                task.wait(0.2)
            end
        end)
    end},
    {"modo fantasma",function()
        A.TR(p,0.5)
        XL("ghost")
        LO["ghost"]=task.spawn(function()
            while LO["ghost"]do
                local cc=ch(p)
                if cc then for _,y in pairs(cc:GetDescendants())do if y:IsA("BasePart")then y.CanCollide=false end end end
                task.wait(0.2)
            end
        end)
    end},
    {"modo fantasma OFF",function()A.TR(p,0)XL("ghost")local cc=ch(p)if cc then for _,y in pairs(cc:GetDescendants())do if y:IsA("BasePart")and y.Name~="HumanoidRootPart"then y.CanCollide=true end end end end},
    {"modo Deus",function()A.GO(p)A.SP(p,200)A.JP(p,500)A.TR(p,0)end}
}}
D[#D+1]={"VELOCIDADE MUNDO",AZ,{
    {"acelerar tempo",function()XL("speedT")LO["speedT"]=task.spawn(function()while LO["speedT"]do LG.ClockTime=LG.ClockTime+1;task.wait(0.5)end end)end},
    {"desacelerar tempo",function()XL("speedT")LO["speedT"]=task.spawn(function()while LO["speedT"]do LG.ClockTime=LG.ClockTime-1;task.wait(0.5)end end)end},
    {"parar tempo",function()XL("speedT")end},
    {"dia eterno",function()LG.ClockTime=14 end},
    {"noite eterna",function()LG.ClockTime=0 end},
    {"amanhecer",function()LG.ClockTime=6 end},
    {"pôr do sol",function()LG.ClockTime=18 end}
}}
D[#D+1]={"TROLL AURA",MD,{
    {"aura de empurrar ON",function()
        XL("pushA")
        LO["pushA"]=task.spawn(function()
            while LO["pushA"]do
                local rr=r(p)
                if rr then
                    for _,x in ipairs(P:GetPlayers())do
                        if x~=p and x.Character then
                            local tr=x.Character:FindFirstChild("HumanoidRootPart")
                            if tr and (tr.Position-rr.Position).Magnitude<15 then
                                tr.Velocity=(tr.Position-rr.Position).Unit*100
                            end
                        end
                    end
                end
                task.wait(0.1)
            end
        end)
    end},
    {"aura de empurrar OFF",function()XL("pushA")end},
    {"aura de puxar ON",function()
        XL("pullA")
        LO["pullA"]=task.spawn(function()
            while LO["pullA"]do
                local rr=r(p)
                if rr then
                    for _,x in ipairs(P:GetPlayers())do
                        if x~=p and x.Character then
                            local tr=x.Character:FindFirstChild("HumanoidRootPart")
                            if tr and (tr.Position-rr.Position).Magnitude<30 then
                                tr.Velocity=(rr.Position-tr.Position).Unit*80
                            end
                        end
                    end
                end
                task.wait(0.1)
            end
        end)
    end},
    {"aura de puxar OFF",function()XL("pullA")end},
    {"aura de girar todos ON",function()
        XL("spinA")
        LO["spinA"]=task.spawn(function()
            while LO["spinA"]do
                local rr=r(p)
                if rr then
                    for _,x in ipairs(P:GetPlayers())do
                        if x~=p and x.Character then
                            local tr=x.Character:FindFirstChild("HumanoidRootPart")
                            if tr and (tr.Position-rr.Position).Magnitude<20 then
                                tr.CFrame=tr.CFrame*CFrame.Angles(0,math.rad(30),0)
                            end
                        end
                    end
                end
                task.wait(0.05)
            end
        end)
    end},
    {"aura de girar OFF",function()XL("spinA")end}
}}
D[#D+1]={"ESTATÍSTICAS",CC,{
    {"mostrar fps",function()
        local pg=p:WaitForChild("PlayerGui")
        local old=pg:FindFirstChild("006FPS")
        if old then old:Destroy()end
        local g=Instance.new("ScreenGui",pg)g.Name="006FPS";g.ResetOnSpawn=false
        local t=Instance.new("TextLabel",g)t.Size=UDim2.new(0,150,0,30)t.Position=UDim2.new(0,10,0,10)t.BackgroundColor3=Color3.fromRGB(0,0,0)t.BackgroundTransparency=0.5;t.TextColor3=Color3.fromRGB(0,255,0);t.TextScaled=true;t.Font=Enum.Font.Code;t.Text="FPS: 60"
        task.spawn(function()
            while t.Parent do
                t.Text="FPS: "..math.floor(1/RenderStepped:Wait())
            end
        end)
    end},
    {"mostrar ping",function()
        local pg=p:WaitForChild("PlayerGui")
        local old=pg:FindFirstChild("006Ping")
        if old then old:Destroy()end
        local g=Instance.new("ScreenGui",pg)g.Name="006Ping";g.ResetOnSpawn=false
        local t=Instance.new("TextLabel",g)t.Size=UDim2.new(0,150,0,30)t.Position=UDim2.new(0,170,0,10)t.BackgroundColor3=Color3.fromRGB(0,0,0)t.BackgroundTransparency=0.5;t.TextColor3=Color3.fromRGB(255,255,0);t.TextScaled=true;t.Font=Enum.Font.Code;t.Text="Ping: 0"
        task.spawn(function()
            while t.Parent do
                t.Text="Ping: "..math.floor(p:GetNetworkPing()*1000).."ms"
                task.wait(1)
            end
        end)
    end},
    {"esconder stats",function()
        local pg=p:WaitForChild("PlayerGui")
        for _,n in ipairs({"006FPS","006Ping"})do local g=pg:FindFirstChild(n)if g then g:Destroy()end end
    end}
}}
D[#D+1]={"BLOCOS ESPECIAIS",AM,{
    {"bloco de lava",function()
        local rr=r(p)if rr then
            local x=PB(rr.Position+rr.CFrame.LookVector*8,Vector3.new(4,4,4),Color3.fromRGB(255,50,0),Enum.Material.Neon)
            local pt=Instance.new("ParticleEmitter",x)pt.Texture="rbxassetid://243660364"pt.Rate=50;pt.Color=ColorSequence.new(Color3.fromRGB(255,80,0))
        end
    end},
    {"bloco de gelo",function()
        local rr=r(p)if rr then
            local x=PB(rr.Position+rr.CFrame.LookVector*8,Vector3.new(4,4,4),Color3.fromRGB(150,220,255),Enum.Material.Ice)
            local pt=Instance.new("ParticleEmitter",x)pt.Texture="rbxassetid://243660364"pt.Rate=30;pt.Color=ColorSequence.new(Color3.fromRGB(200,240,255))
        end
    end},
    {"bloco explosivo",function()
        local rr=r(p)if rr then
            local x=PB(rr.Position+rr.CFrame.LookVector*8,Vector3.new(4,4,4),Color3.fromRGB(255,100,0),Enum.Material.Neon)
            task.delay(2,function()
                local e=Instance.new("Explosion",workspace)e.Position=x.Position;e.BlastRadius=20;e.BlastPressure=500000
                x:Destroy()
            end)
        end
    end},
    {"bloco flutuante",function()
        local rr=r(p)if rr then
            local x=PB(rr.Position+rr.CFrame.LookVector*8+Vector3.new(0,15,0),Vector3.new(6,1,6),Color3.fromRGB(255,215,0),Enum.Material.Neon)
        end
    end},
    {"bloco invisível",function()
        local rr=r(p)if rr then
            local x=PB(rr.Position+rr.CFrame.LookVector*8,Vector3.new(4,4,4),Color3.fromRGB(200,200,200),Enum.Material.ForceField)
            x.Transparency=0.9
        end
    end}
}}
D[#D+1]={"EFEITOS SONOROS",MD,{
    {"som de explosão",function()local s=Instance.new("Sound",workspace.CurrentCamera)s.SoundId="rbxassetid://3001097304"s.Volume=2;s:Play()task.delay(3,function()s:Destroy()end)end},
    {"som de raio",function()local s=Instance.new("Sound",workspace.CurrentCamera)s.SoundId="rbxassetid://4612375236"s.Volume=1.5;s:Play()task.delay(3,function()s:Destroy()end)end},
    {"som de vitória",function()local s=Instance.new("Sound",workspace.CurrentCamera)s.SoundId="rbxassetid://4612377721"s.Volume=1.5;s:Play()task.delay(3,function()s:Destroy()end)end},
    {"grito de guerra",function()local s=Instance.new("Sound",workspace.CurrentCamera)s.SoundId="rbxassetid://1604268306"s.Volume=1.5;s:Play()task.delay(3,function()s:Destroy()end)end}
}}
D[#D+1]={"LIVRE",PR,{
    {"executar código",function()
        local pg=p:WaitForChild("PlayerGui")
        local old=pg:FindFirstChild("006Cmd")
        if old then old:Destroy()end
        local g=Instance.new("ScreenGui",pg)g.Name="006Cmd";g.ResetOnSpawn=false
        local fr=Instance.new("Frame",g)fr.Size=UDim2.new(0.7,0,0,100)fr.Position=UDim2.new(0.15,0,0.5,-50)fr.BackgroundColor3=Color3.fromRGB(15,0,25)fr.BorderSizePixel=0
        Instance.new("UICorner",fr).CornerRadius=UDim.new(0,10)
        local box=Instance.new("TextBox",fr)box.Size=UDim2.new(1,-20,0,40)box.Position=UDim2.new(0,10,0,10)box.BackgroundColor3=Color3.fromRGB(40,0,60)box.TextColor3=Color3.fromRGB(255,255,255);box.TextScaled=true;box.Font=Enum.Font.Code;box.Text="print('>:D teste')";box.ClearTextOnFocus=false
        local go=Instance.new("TextButton",fr)go.Size=UDim2.new(1,-20,0,35)go.Position=UDim2.new(0,10,0,58)go.BackgroundColor3=Color3.fromRGB(0,150,0)go.TextColor3=Color3.new(1,1,1)go.TextScaled=true;go.Font=Enum.Font.GothamBold;go.Text="EXECUTAR >:D"
        go.MouseButton1Click:Connect(function()
            local ok,er=pcall(function()loadstring(box.Text)()end)
            if not ok then warn(er)end
        end)
    end},
    {"fechar cmd",function()local pg=p:WaitForChild("PlayerGui")local g=pg:FindFirstChild("006Cmd")if g then g:Destroy()end end}
}}
D[#D+1]={"PARAR TUDO 2",PR,{
    {"parar loops extras",function()
        for _,id in ipairs({"aim","aimN","wall","spamj","antiF","antiZ","afk2","follow","lava","inv","fw","lrgb","trail","auraR","flu","fall","af","acol","mapa","speedT","pushA","pullA","spinA","rainbowSword","ghost","ncP"})do XL(id)end
    end},
    {"limpar tudo do mapa",function()
        for _,x in pairs(workspace:GetChildren())do
            if x:IsA("Part")and x.Anchored then x:Destroy()end
        end
    end},
    {"resetar meu personagem",function()p.Character:BreakJoints()end},
    {"fechar todos os GUIs",function()
        local pg=p:WaitForChild("PlayerGui")
        for _,x in pairs(pg:GetChildren())do
            i
    {"ir pra cima 500",function()local rr=r(p)if rr then rr.CFrame=CFrame.new(rr.Position+Vector3.new(0,500,0))end end},
    {"ir pro spawn",function()local s=workspace:FindFirstChildOfClass("SpawnLocation")if s then local rr=r(p)if rr then rr.CFrame=s.CFrame+Vector3.new(0,5,0)end end end}
}}local pm=true
for _,it in ipairs(D)do
    local fr=AB(it[1],it[2])
    local y=4
    for _,bt in ipairs(it[3])do
        BT(bt[1],bt[2],fr,it[2])
        y=y+32
    end
    if pm then
        fr.Visible=true
        T[it[1]].b.BackgroundColor3=Color3.fromRGB(255,60,60)
        pm=false
    end
end
print(">:D Painel 006L6 >:D FINAL carregado! Abas:",#D)
