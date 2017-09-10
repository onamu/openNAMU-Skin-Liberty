<html>
    <head>
    <link rel="stylesheet" href="/views/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="/views/css/font/Noto Sans KR.css">
    <link rel="stylesheet" href="/views/css/default.css">
    <link rel="stylesheet" href="/views/css/default_mobile.css">
    <link rel="stylesheet" href="/views/css/jquery-ui.min.css">
    <link rel="stylesheet" href="/views/js/lib/bootstrap.min.js">
    <link rel="stylesheet" href="/views/js/lib/jquery-ui.min.js">
    <link rel="stylesheet" href="/views/js/layout.js">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/highlight.js/8.7/styles/default.min.css">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/highlight.js/8.7/highlight.min.js"></script>
    <script>hljs.initHighlightingOnLoad();</script>
    <link rel="stylesheet" href="/views/css/awesome/font-awesome.min.css">
    <script type="text/x-mathjax-config">MathJax.Hub.Config({tex2jax: {inlineMath: [['$','$'], ['\\(','\\)']]}});</script>
    <script type="text/javascript" async src="https://cdnjs.cloudflare.com/ajax/libs/mathjax/2.7.1/MathJax.js?config=TeX-AMS_CHTML"></script>
    <style>{{!imp[4]}}</style>
    <script>{{!imp[5]}}</script>
    <meta name="twitter:creator" content="@{{imp[1]}}">
    <meta name="twitter:title" content="{{imp[0]}}">
    <meta name="twitter:site" content="@{{imp[1]}}">
    <meta name="twitter:card" content="summary">
    <link rel="shortcut icon" href="/views/img/on.ico">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <script>
        function folding(num) {
            var fol = document.getElementById('folding_' + num);
            if(fol.style.display == 'inline-block' || fol.style.display == 'block') {
                fol.style.display = 'none';
            } else {
                if(num % 3 == 0) {
                    fol.style.display = 'block';
                } else {
                    fol.style.display = 'inline-block';
                }
            }
        }
    </script>
    </head>
    <body class="Liberty">
        <div class="nav-wrapper navbar-fixed-top">
            <nav class="navbar navbar-dark">
                <a class="navbar-brand" href="/"></a>
                <ul class="nav navbar-nav">
                    <li class="nav-item">
                        <a class="nav-link" href="/recent_changes"><span class="fa fa-refresh"></span><span class="hide-title">최근바뀜</span></a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="/recent_discuss"><span class="fa fa-comments"></span><span class="hide-title">최근토론</span></a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="/random"><span class="fa fa-random"></span><span class="hide-title">임의문서</span></a>
                    </li>
                </ul>
            </nav>
        </div>
        <div class="content-wrapper">
            <div class="container-fluid liberty-content">
                <div class="liberty-content-header">
                    % if(not menu == 0):
                        <div class="content-tools">
                            <div class="btn-group" role="group" aria-label="content-tools">
                                % for sub_d in menu:
                                    <a href="/{{sub_d[0]}}" class="btn btn-secondary tools-btn">{{sub_d[1]}}</a>
                                % end
                            </div>
                        </div>
                    % end
                    <div class="title">
                        <h1>
                            {{imp[0]}}
                            % if(not imp[6] == 0):
                                <sub>{{imp[6]}}</sub>
                            % end
                        </h1>
                    </div>
                </div>
                <div class="liberty-content-main wiki-article">
                    {{!data}}
                </div>
                </div>
            </div>
        </div>
    </body>
</html>
