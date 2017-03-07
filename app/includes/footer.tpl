<footer role="contentinfo" aria-label="footer" ng-controller='footerCtrl' >

  <div class="container">

    <section class="row"><section class="row">

      <div class="col-sm-3 footer-1">
        <p aria-hidden="true"><a href="https://www.myetherwallet.com/"><img src="images/logo-myetherwallet.svg" height="55px" width="auto" alt="Ubiq Wallet" /></a></p>
        <p><span translate="FOOTER_1">Open-Source, client-side tool for easily & securely interacting with the Ubiq network.</span> <span translate="FOOTER_1b">Created by</span> <a aria-label="kvhnuke's github" href="https://github.com/kvhnuke" target="_blank">kvhnuke</a> & <a aria-label="tayvano's github" href="https://github.com/tayvano" target="_blank">tayvano</a>.</p>
        <br />
        <p><a role="link" tabindex="0" data-toggle="modal" data-target="#disclaimerModal" translate="FOOTER_4"> Disclaimer </a></p>
      </div>

      <div class="col-sm-6 footer-2">
        <h5> <i ng-hide="curLang=='en'">🏅</i> <span translate="Translator_Desc"> Thank you to our translators </span></h5>
        <ul><li>
          <span translate="TranslatorName_1"></span>
          <span translate="TranslatorName_2"></span>
          <span translate="TranslatorName_3"></span>
          <span translate="TranslatorName_4"></span>
          <span translate="TranslatorName_5"></span>
        </li></ul>
      </div>

      <div class="col-sm-3 footer-3">
        <h5><i aria-hidden="true">🌎</i> On the Web</h5>
        <ul>
          <li><a aria-label="my ether wallet.com" href="https://www.MyEtherWallet.com" target="_blank">www.MyEtherWallet.com</a></li>
          <li><a aria-label="my ether wallet github" href="https://github.com/kvhnuke/etherwallet" target="_blank">Github: Pyrus & CX</a></li>
          <li><a aria-label="our organization on github" href="https://github.com/MyEtherWallet" target="_blank">Github: MyEtherWallet (Org)</a></li>
          <li><a aria-label="twitter" href="https://twitter.com/myetherwallet" target="_blank">Twitter</a></li>
        </ul>

      </div>

    </section></section>

    <p ng-show="showBlocks" class="text-right" style="font-size: 10px">Latest Block#: {{currentBlockNumber}}</p>

  </div>

  @@if (site === 'mew' ) { @@include( './footer-disclaimer-modal.tpl',   { "site": "mew" } ) }
  @@if (site === 'cx'  ) { @@include( './footer-disclaimer-modal.tpl',   { "site": "cx"  } ) }


</footer>

</body>
</html>
