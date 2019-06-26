<!DOCTYPE html>
<html lang="en" ng-app="mewApp">
<head>
<meta charset="utf-8">
<title>Pyrus.ubiqsmart.com</title>
<link rel="canonical" href="https://pyrus.ubiqsmart.com" />
<meta name="description" content="Pyrus: Open-Source & Client-Side Ubiq Wallet. Double-check the URL ( .com ) before unlocking your wallet.">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="css/etherwallet-master.min.css">
<script type="text/javascript" src="js/etherwallet-static.min.js"></script>
<script type="text/javascript" src="js/etherwallet-master.js"></script>
<link rel="apple-touch-icon" sizes="180x180" href="images/fav/apple-touch-icon.png">
<link rel="icon" type="image/png" sizes="32x32" href="images/fav/favicon-32x32.png">
<link rel="icon" type="image/png" sizes="16x16" href="images/fav/favicon-16x16.png">
<link rel="manifest" href="images/fav/manifest.json">
<link rel="mask-icon" href="images/fav/safari-pinned-tab.svg" color="#2f99b0">
<link rel="shortcut icon" href="images/fav/favicon.ico">
<meta name="apple-mobile-web-app-title" content="Pyrus">
<meta name="application-name" content="Pyrus">
<meta name="msapplication-config" content="images/fav/browserconfig.xml">
<meta name="theme-color" content="#1d6986">
<meta property="og:url" content="https://pyrus.ubiqsmart.com" />
<meta property="og:title" content="Pyrus.com" />
<meta property="og:image" content="/images/myetherwallet-logo-banner.png" />
<meta property="og:image" content="/images/myetherwallet-logo.png" />
<meta property="og:image" content="/images/myetherwallet-logo-square.png" />
<meta property="og:image" content="/images/myetherwallet-banner-fun.jpg" />
<meta property="og:description" content="Pyrus: Open-Source & Client-Side Ubiq Wallet. Double-check the URL ( .com ) before unlocking your wallet." />
<script type='application/ld+json'>{"@context":"http://schema.org","@type":"Organization","@id":"#organization","url":"https://pyrus.ubiqsmart.com/","name":"Pyrus",
"logo":"https://pyrus.ubiqsmart.com/images/myetherwallet-logo-banner.png","description": "Pyrus: Open-Source & Client-Side Ubiq Wallet. Double-check the URL ( .com ) before unlocking your wallet.","sameAs":["https://pyrus.ubiqsmart.com","https://chrome.google.com/webstore/detail/myetherwallet-cx/nlbmnnijcnlegkjjpcfjclmcfggfefdm","https://twitter.com/ubiqsmart","https://blog.ubiqsmart.com","https://github.com/ubiq/pyruswallet","https://github.com/Ubiq","https://github.com/ubiq/pyruswallet/releases/latest","https://discord.gg/HF6vEGF","https://www.reddit.com/r/Ubiq/"]}</script>
</head>
<body>
<header class="{{curNode.name}} {{curNode.service}} {{curNode.service}} nav-index-{{gService.currentTab}}" aria-label="header" ng-controller='tabsCtrl' >

  @@if (site === 'mew' ) {
    <div class="small announcement annoucement-danger">
      <div class="container">Always check the URL and the connection is secure. Look for https://pyrus.ubiqsmart.com/. <a href="https://kb.myetherwallet.com/en/getting-started/back-to-the-basics/" target="_blank" rel="noopener">Be safe &amp; secure</a>.</div>
    </div>
  }

    @@if (site === 'cx' ) {
    <div class="small announcement annoucement-danger">
        <div class="container" translate="CX_Warning_1">Make sure you have <strong>external backups</strong> of any wallets you store here. Many things could happen that would cause you to lose the data in this Chrome Extension, including uninstalling the extension. This extension is a way to easily access your wallets, <strong>not</strong> a way to back them up.
        </div>
    </div>
    }
  <section class="bg-gradient header-branding">
    <section class="container">
      @@if (site === 'mew' ) {
        <a class="brand" href="/" aria-label="Go to homepage">
          <img src="images/logo-myetherwallet.svg"   height="64px" width="245px" alt="Pyrus" />
        </a>
      }
      @@if (site === 'cx'  ) {
        <a class="brand" href="/cx-wallet.html" aria-label="Go to homepage">
          <img src="images/logo-myetherwalletcx.svg" height="64px" width="245px" alt="Pyrus" />
        </a>
      }
      <div class="tagline">

        <span>3.10.2.6</span>


        <span class="dropdown dropdown-lang" ng-cloak>
          <a tabindex="0"  aria-haspopup="true" aria-expanded="false" aria-label="change language. current language {{curLang}}" class="dropdown-toggle  btn btn-white" ng-click="dropdown = !dropdown">{{curLang}}<i class="caret"></i></a>
          <ul class="dropdown-menu" ng-show="dropdown">
            <li><a ng-class="{true:'active'}[curLang=='English']"      ng-click="changeLanguage('en','English'     )"> English         </a></li>
            <li role="separator" class="divider"></li>
            <li><a data-toggle="modal" data-target="#disclaimerModal" translate="FOOTER_4"> Disclaimer </a></li>
          </ul>
        </span>

        <span class="dropdown dropdown-gas" ng-cloak>
          <a tabindex="0" aria-haspopup="true" aria-label="adjust gas price" class="dropdown-toggle  btn btn-white" ng-click="dropdownGasPrice = !dropdownGasPrice">
            <span translate="OFFLINE_Step2_Label_3">Gas Price</span>: {{gas.value}} Gwei
            <i class="caret"></i>
          </a>
          <ul class="dropdown-menu" ng-show="dropdownGasPrice">
            <div class="header--gas">
              <span translate="OFFLINE_Step2_Label_3">Gas Price</span>: {{gas.value}} Gwei
              <input type="range" ng-model="gas.value" min="{{gas.min}}" max="{{gas.max}}" steps="1" ng-change="gasChanged()"/>
              <p class="small col-xs-4 text-left">Not So Fast</p>
              <p class="small col-xs-4 text-center">Fast</p>
              <p class="small col-xs-4 text-right">Fast AF</p>
              <p class="small" style="white-space:normal;font-weight:300;margin: 2rem 0 0;" translate="GAS_PRICE_Desc"></p>
              <a class="small" translate="x_ReadMore" href="https://kb.myetherwallet.com/gas/what-is-gas-ethereum.html" target="_blank" rel="noopener"></a>
            </div>
          </ul>
        </span>

        <!-- Warning: The separators you see on the frontend are in styles/etherwallet-custom.less. If you add / change a node, you have to adjust these. Ping tayvano if you're not a CSS wizard -->
        <span class="dropdown dropdown-node" ng-cloak>
          <a tabindex="0" aria-haspopup="true" aria-label="change node. current node {{curNode.name}} node by {{curNode.service}}" class="dropdown-toggle  btn btn-white" ng-click="dropdownNode = !dropdownNode">
            Network: {{curNode.name}} <small>({{curNode.service}})</small>
            <i class="caret"></i>
          </a>
          <ul class="dropdown-menu" ng-show="dropdownNode">
            <li ng-repeat="(key, value) in nodeList"><a ng-class="{true:'active'}[curNode == key]" ng-click="changeNode(key)">
              {{value.name}}
              <small> ({{value.service}}) </small>
              <img ng-show="value.service=='Custom'" src="images/icon-remove.svg" class="node-remove" title="Remove Custom Node" ng-click="removeNodeFromLocal(value.name)"/>
            </a></li>
            <li><a ng-click="customNodeModal.open(); dropdownNode = !dropdownNode;"> Add Custom Node </a></li>
          </ul>
        </span>

      </div>
    </section>
  </section>

  <!-- <section class="bg-gradient header-branding">
    <section class="container">

      @@if (site === 'mew' ) { <a class="brand" href="https://pyrus.ubiqsmart.com/" aria-label="Go to homepage"> <img src="images/logo-pyrus-2.svg"   height="16px" width="160px" alt="Pyrus" /></a> }
      @@if (site === 'cx'  ) { <a class="brand" href="/cx-wallet.html" aria-label="Go to homepage">                <img src="images/logo-pyrus.svg" height="64px" width="245px" alt="Pyrus" /></a> }

      <div class="tagline"><span style="max-width: 395px">Pyrus - Open-Source & Client-Side Ubiq Wallet</span>

        &middot; v3.7.4 &nbsp;&nbsp;

        <span class="dropdown" ng-cloak>
          <a tabindex="0"  aria-haspopup="true" aria-expanded="false" aria-label="change language. current language {{curLang}}" class="dropdown-toggle" ng-click="dropdown = !dropdown">{{curLang}}<i class="caret"></i></a>
          <ul class="dropdown-menu" ng-show="dropdown">
            <li><a ng-class="{true:'active'}[curLang=='English']"      ng-click="changeLanguage('en','English'     )"> English         </a></li>
            <li role="separator" class="divider"></li>
            <li><a data-toggle="modal" data-target="#disclaimerModal" translate="FOOTER_4"> Disclaimer </a></li>
          </ul>
        </span>

        &nbsp;&nbsp;

        <span class="dropdown dropdown-node" ng-cloak>
          <a tabindex="0" aria-haspopup="true" aria-label="change node. current node {{curNode.name}} node by {{curNode.service}}" class="dropdown-toggle" ng-click="dropdownNode = !dropdownNode"> {{curNode.name}} <small>({{curNode.service}})</small><i class="caret"></i></a>
          <ul class="dropdown-menu" ng-show="dropdownNode">
            <li ng-repeat="(key, value) in nodeList"><a ng-class="{true:'active'}[curNode == key]" ng-click="changeNode(key)">
              {{value.name}}
              <small> ({{value.service}}) </small>
              <img ng-show="value.service=='Custom'" img src="images/icon-remove.svg" class="node-remove" title="Remove Custom Node" ng-click="removeNodeFromLocal(value.name)"/>
            </a></li>
            <li><a ng-click="customNodeModal.open(); dropdownNode = !dropdownNode;"> Add Custom Node </a></li>
          </ul>
        </span>

      </div>
    </section>
  </section> -->

  <nav role="navigation" aria-label="main navigation" class="container nav-container overflowing" >
    <a aria-hidden="true" ng-show="showLeftArrow" class="nav-arrow-left" ng-click="scrollLeft(100);" ng-mouseover="scrollHoverIn(true,2);" ng-mouseleave="scrollHoverOut()">&#171;</a>
    <div class="nav-scroll">
      <ul class="nav-inner">
        @@if (site === 'mew' ) {
        <li ng-repeat="tab in tabNames track by $index" class="nav-item {{tab.name}}" ng-class="{active: $index==gService.currentTab}" ng-show="tab.mew" ng-click="tabClick($index)"> <a tabindex="0" aria-label="nav item: {{tab.name | translate}}" translate="{{tab.name}}"></a></li>
        }
        @@if (site === 'cx' ) {
        <li ng-repeat="tab in tabNames track by $index" class="nav-item {{tab.name}}" ng-class="{active: $index==gService.currentTab}" ng-show="tab.cx" ng-click="tabClick($index)"> <a tabindex="0" aria-label="nav item: {{tab.name | translate}}" translate="{{tab.name}}"></a></li>
        }
        <li class="nav-item help"><a href="https://kb.myetherwallet.com" target="_blank" rel="noopener">Help</a></li>
      </ul>
    </div>
    <a aria-hidden="true" ng-show="showRightArrow" class="nav-arrow-right" ng-click="scrollRight(100);" ng-mouseover="scrollHoverIn(false,2);" ng-mouseleave="scrollHoverOut()">&#187;</a>
  </nav>

  @@if (site === 'mew' ) { @@include( './header-node-modal.tpl', { "site": "mew" } ) }
  @@if (site === 'cx'  ) { @@include( './header-node-modal.tpl', { "site": "cx"  } ) }

</header>
