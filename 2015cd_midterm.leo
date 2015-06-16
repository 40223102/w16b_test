<?xml version="1.0" encoding="utf-8"?>
<!-- Created by Leo: http://leoeditor.com/leo_toc.html -->
<?xml-stylesheet ekr_test ?>
<leo_file xmlns:leo="http://leoeditor.com/namespaces/leo-python-editor/1.1" >
<leo_header file_format="2" tnodes="0" max_tnode_index="0" clone_windows="0"/>
<globals body_outline_ratio="0.5" body_secondary_ratio="0.5">
	<global_window_position top="50" left="50" height="500" width="700"/>
	<global_log_window_position top="0" left="0" height="0" width="0"/>
</globals>
<preferences/>
<find_panel_settings/>
<vnodes>
<v t="2014fall.20141212095015.1784"><vh>@settings</vh>
<v t="2014fall.20141212095015.1785"><vh>@data qt-gui-plugin-style-sheet</vh></v>
<v t="2014fall.20141212095015.1786"><vh>@string initial_split_orientation = horizontal</vh></v>
</v>
<v t="2015.20150330144929.1714" a="E"><vh>以下為協同產品設計實習期中考試</vh>
<v t="amd.20150503180635.1"><vh>與 OpenShift 應用程式同步</vh>
<v t="amd.20150503182305.1"><vh>錯誤訊息</vh></v>
<v t="amd.20150503182956.1"><vh>已經完成 Github 倉儲與 OpenShift 同步</vh></v>
<v t="amd.20150503183108.1"><vh>傳回學號</vh></v>
</v>
<v t="office.20150504101130.1" a="E"><vh>在 Creo Pro/Web.Link 環境使用 Brython</vh>
<v t="office.20150504101152.1"><vh>好處</vh></v>
<v t="office.20150504101237.1"><vh>問題</vh></v>
<v t="office.20150504111057.1"><vh>結論</vh></v>
</v>
</v>
<v t="2014fall.20141212095015.1774" a="E"><vh>@path ./</vh>
<v t="2014fall.20141212095015.1775" a="E"><vh>@clean wsgi.py</vh>
<v t="2014fall.20141212095015.1776"><vh>&lt;&lt;declarations&gt;&gt; (wsgi)</vh></v>
<v t="office.20150504185643.1"><vh>downloadlist_access_list</vh></v>
<v t="office.20150504185717.1"><vh>sizeof_fmt</vh></v>
<v t="2014fall.20141212095015.1777" a="E"><vh>class Midterm</vh>
<v t="amd.20150503182609.1"><vh>__init__</vh></v>
<v t="2015.20150609105412.1"><vh>index</vh></v>
<v t="2015.20150616215152.1"><vh>a_40223102</vh></v>
</v>
</v>
</v>
</vnodes>
<tnodes>
<t tx="2014fall.20141212095015.1774"></t>
<t tx="2014fall.20141212095015.1775"># coding=utf-8
# 上面的程式內容編碼必須在程式的第一或者第二行才會有作用

################# (1) 模組導入區
# 導入 cherrypy 模組, 為了在 OpenShift 平台上使用 cherrypy 模組, 必須透過 setup.py 安裝


@language python
@tabwidth -4

&lt;&lt;declarations&gt;&gt;
@others
################# (4) 程式啟動區
# 配合程式檔案所在目錄設定靜態目錄或靜態檔案
application_conf = {'/static':{
        'tools.staticdir.on': True,
        # 程式執行目錄下, 必須自行建立 static 目錄
        'tools.staticdir.dir': _curdir+"/static"},
        '/downloads':{
        'tools.staticdir.on': True,
        'tools.staticdir.dir': data_dir+"/downloads"},
        '/images':{
        'tools.staticdir.on': True,
        'tools.staticdir.dir': data_dir+"/images"}
    }
    
root = Midterm()

#root.gear = gear.Gear()

if 'OPENSHIFT_REPO_DIR' in os.environ.keys():
    # 表示在 OpenSfhit 執行
    application = cherrypy.Application(root, config=application_conf)
else:
    # 表示在近端執行
    cherrypy.quickstart(root, config=application_conf)
</t>
<t tx="2014fall.20141212095015.1776">import cherrypy
# 導入 Python 內建的 os 模組, 因為 os 模組為 Python 內建, 所以無需透過 setup.py 安裝
import os
# 導入 random 模組
import random
import math
from cherrypy.lib.static import serve_file
import man2
# 導入 gear 模組
#import gear

################# (2) 廣域變數設定區
# 確定程式檔案所在目錄, 在 Windows 下有最後的反斜線
_curdir = os.path.join(os.getcwd(), os.path.dirname(__file__))
# 設定在雲端與近端的資料儲存目錄
if 'OPENSHIFT_REPO_DIR' in os.environ.keys():
    # 表示程式在雲端執行
    download_root_dir = os.environ['OPENSHIFT_DATA_DIR']
    data_dir = os.environ['OPENSHIFT_DATA_DIR']
else:
    # 表示程式在近端執行
    download_root_dir = _curdir + "/local_data/"
    data_dir = _curdir + "/local_data/"


</t>
<t tx="2014fall.20141212095015.1777">################# (3) 程式類別定義區
# 以下改用 CherryPy 網際框架程式架構
# 以下為 Hello 類別的設計內容, 其中的 object 使用, 表示 Hello 類別繼承 object 的所有特性, 包括方法與屬性設計
class Midterm(object):

    # Midterm 類別的啟動設定
    _cp_config = {
    'tools.encode.encoding': 'utf-8',
    'tools.sessions.on' : True,
    'tools.sessions.storage_type' : 'file',
    #'tools.sessions.locking' : 'explicit',
    # session 以檔案儲存, 而且位於 data_dir 下的 tmp 目錄
    'tools.sessions.storage_path' : data_dir+'/tmp',
    # session 有效時間設為 60 分鐘
    'tools.sessions.timeout' : 60
    }

    @others
</t>
<t tx="2014fall.20141212095015.1784"></t>
<t tx="2014fall.20141212095015.1785">QSplitter::handle {
    background-color: #CAE1FF; /* lightSteelBlue1 */
}

QStackedWidget {
    /* background-color:lightpink; */
    border-color: red;
    padding: 0px;
    /* border-width: 0px; */
    /* background-color: yellow; */
}

QSplitter {
    border-color: white;
    background-color: white;
    border-style: solid;
}

QTreeWidget {
    /* These apply to the selected item, but not to editing items.*/
    background-color: #ffffec; /* Leo's traditional tree color */
    selection-color: black; /* was white */
    selection-background-color: lightgrey;
    /* font-family: SansSerif; */
    /*font-family: DejaVu Sans Mono;*/
    font-family:YaHei Mono;
    /* 標題字型大小設定 */
    font-size: 20px;
    font-weight: normal; /* normal,bold,100,..,900 */
    font-style: normal; /* normal, italic,oblique */
 }

/* Headline edit widgets */
QTreeWidget QLineEdit {
    background-color: cornsilk;
    selection-color: white;
    selection-background-color: blue;
    /*font-family: DejaVu Sans Mono;*/    
    font-family:YaHei Mono;
    /* 沒有特別對應字型大小 */
    font-size: 20px;
    font-weight: normal; /* normal,bold,100,..,900 */
    font-style: normal; /* normal, italic,oblique */
}

/* The log panes */
QTextEdit {
    background-color: #f2fdff;
    selection-color: red;
    selection-background-color: blue;
    /* font-family: Courier New; */
    font-family:YaHei Mono;
    /* log font 大小 */
    font-size: 20px;
    font-weight: normal; /* normal,bold,100,..,900 */
    font-style: normal; /* normal, italic,oblique */
}

/* The body pane */
QTextEdit#richTextEdit {
    background-color: #fdf5f5; /* A kind of pink. */
    selection-color: white;
    selection-background-color: red;
    /*font-family: DejaVu Sans Mono;*/
    /* font-family: Courier New; */
    font-family:YaHei Mono;
    /* 內文字型大小 */
    font-size: 20px;
    font-weight: normal; /* normal,bold,100,..,900 */
    font-style: normal; /* normal,italic,oblique */
}

QLabel {
    font-family:YaHei Mono;
    /* 下方的 Minibuffer 標題字型大小 */
    font-size: 20px;
    font-weight: normal; /* normal,bold,100,..,900 */
    font-style: normal; /* normal,italic,oblique */
}

/* Editor labels */
QLineEdit#editorLabel {
    background-color: #ffffec;
    font-family:YaHei Mono;
    /* 沒有直接對應字型大小 */
    font-size: 20px;
    font-weight: normal; /* normal,bold,100,..,900 */
    font-style: normal; /* normal,italic,oblique */
    border: 2px;
    margin: 2px;
}</t>
<t tx="2014fall.20141212095015.1786">horizontal: body pane to the left
vertical: body pane on the botton</t>
<t tx="2015.20150330144929.1714"></t>
<t tx="2015.20150609105412.1">@cherrypy.expose
def index(self):
    outstring = '''
&lt;a href="a_40223102"&gt;a_40223102&lt;/a&gt;&lt;br /&gt;
'''
    return outstring
</t>
<t tx="2015.20150616215152.1">@cherrypy.expose
def a_40223102(self):
    outstring = '''
40223102
'''
    return outstring
</t>
<t tx="amd.20150503180635.1">第1時間因為將 gear.py 移到 ref 目錄下, 但是沒有處理 wsgi.py 內部的 import gear

因此同步到 OpenShift 應用程式時, 因為產生錯誤而無法執行.

處理方法, 使用 filezilla 與 Windows 環境下 pageant.exe 所導入的 OpenShift/.ssh/id_rsa 對應私鑰

或者在 Linux 環境下, 利用指令 ssh-add ~/.ssh/id_rsa 達到與 pageant.exe 導入私鑰相同效果</t>
<t tx="amd.20150503182305.1">利用 filezilla 與 pageant.exe 權限對應後, 可以從 OpenShift 應用程式的 /var/lib/openshift/5545eff4e0b8cd7279000242/app-root/logs 目錄中, 找到 python.log, 下載後, 可以見到下列錯誤, 只要刪除 import gear, 應該就可以執行.


[Sun May 03 06:10:22 2015] [error] [client 127.8.21.129]     import gear
[Sun May 03 06:10:22 2015] [error] [client 127.8.21.129] ImportError: No module named 'gear'</t>
<t tx="amd.20150503182609.1">def __init__(self):
    # hope to create downloads and images directories　
    if not os.path.isdir(download_root_dir+"downloads"):
        try:
            os.makedirs(download_root_dir+"downloads")
        except:
            print("mkdir error")
    if not os.path.isdir(download_root_dir+"images"):
        try:
            os.makedirs(download_root_dir+"images")
        except:
            print("mkdir error")
    if not os.path.isdir(download_root_dir+"tmp"):
        try:
            os.makedirs(download_root_dir+"tmp")
        except:
            print("mkdir error")
</t>
<t tx="amd.20150503182956.1">Github 倉儲:

https://github.com/coursemdetw/2015cd_midterm

OpenShift 網站:

http://2015cdmidterm-scrum2mdetw.rhcloud.com/</t>
<t tx="amd.20150503183108.1"></t>
<t tx="office.20150504101130.1"></t>
<t tx="office.20150504101152.1">可以在網頁前端透過 Brython 程式控制 Creo Parametric 環境中的機械設計零件</t>
<t tx="office.20150504101237.1">Brython 3.1.1 雖然可以在 IE 9 以上的瀏覽器中運行, 但是與 Creo Parametric 環境中的嵌入式  ActiveX 物件合用時,

產生無法載入 __class__ 的問題

解決方法:

必須深入檢視 brython.js 與 Pro/Web.Link ActiveX 物件導入時, 為何無法載入  __class__

1. 將  brython.js 載入方式從 body 轉為 window 載入, 也是得到同樣的錯誤

2. 已經發現錯誤出現在 brython.js 中的 5003-5005 行

$B.get_class=function(obj){
if(obj===null){return $B.$NoneDict}
var klass=obj.__class__

因為將 IE 嵌入 Creo Parametric 後, 有關 JScript 的語法與外部的 IE 有些差異, 因此若要在 Creo Parametric 環境中的 IE 執行 Brython, 需要從了解 
 JavaScript 程式在 IE 上的差異入手:
 
 IE Embedded (Compact 7): https://msdn.microsoft.com/en-us/library/ee487632.aspx

JScript User's Guide: https://msdn.microsoft.com/en-us/library/4yyeyb0a(v=vs.84).aspx

JScript Language Reference: https://msdn.microsoft.com/en-us/library/yek4tbz0(v=vs.84).aspx



</t>
<t tx="office.20150504111057.1">Brython 3.1.1 已經在 IE 9 之後的版本取得相容, 但是當 IE 9 嵌入 Creo Parametric 時, 則無法正確導入 brython.js, 其中對於 Brython 所定義給 Python 程式使用的 get_class 方法一直無法導入 __class__ 物件而出現錯誤.

由於在 Creo Parametric 環境中使用 Brython 的用戶目前應該是絕無僅有, 因此在這個階段, 除了自行修改 brython.js 讓 Brython 可以在嵌入式 IE 執行 Pro/Web.Link, 唯一的方法就是採用 JavaScript 編寫 Pro/Web.Link 程式</t>
<t tx="office.20150504185643.1">def downloadlist_access_list(files, starti, endi):
    # different extension files, associated links were provided
    # popup window to view images, video or STL files, other files can be downloaded directly
    # files are all the data to list, from starti to endi
    # add file size
    outstring = ""
    for index in range(int(starti)-1, int(endi)):
        fileName, fileExtension = os.path.splitext(files[index])
        fileExtension = fileExtension.lower()
        fileSize = sizeof_fmt(os.path.getsize(download_root_dir+"downloads/"+files[index]))
        # images files
        if fileExtension == ".png" or fileExtension == ".jpg" or fileExtension == ".gif":
            outstring += '&lt;input type="checkbox" name="filename" value="'+files[index]+'"&gt;&lt;a href="javascript:;" onClick="window.open(\'/downloads/'+ \
            files[index]+'\',\'images\', \'catalogmode\',\'scrollbars\')"&gt;'+files[index]+'&lt;/a&gt; ('+str(fileSize)+')&lt;br /&gt;'
        # stl files
        elif fileExtension == ".stl":
            outstring += '&lt;input type="checkbox" name="filename" value="'+files[index]+'"&gt;&lt;a href="javascript:;" onClick="window.open(\'/static/viewstl.html?src=/downloads/'+ \
            files[index]+'\',\'images\', \'catalogmode\',\'scrollbars\')"&gt;'+files[index]+'&lt;/a&gt; ('+str(fileSize)+')&lt;br /&gt;'
        # flv files
        elif fileExtension == ".flv":
            outstring += '&lt;input type="checkbox" name="filename" value="'+files[index]+'"&gt;&lt;a href="javascript:;" onClick="window.open(\'/flvplayer?filepath=/downloads/'+ \
            files[index]+'\',\'images\', \'catalogmode\',\'scrollbars\')"&gt;'+files[index]+'&lt;/a&gt; ('+str(fileSize)+')&lt;br /&gt;'
        # direct download files
        else:
            outstring += "&lt;input type='checkbox' name='filename' value='"+files[index]+"'&gt;&lt;a href='/download/?filepath="+download_root_dir.replace('\\', '/')+ \
            "downloads/"+files[index]+"'&gt;"+files[index]+"&lt;/a&gt; ("+str(fileSize)+")&lt;br /&gt;"
    return outstring
</t>
<t tx="office.20150504185717.1">def sizeof_fmt(num):
    for x in ['bytes','KB','MB','GB']:
        if num &lt; 1024.0:
            return "%3.1f%s" % (num, x)
        num /= 1024.0
    return "%3.1f%s" % (num, 'TB')
</t>
</tnodes>
</leo_file>
