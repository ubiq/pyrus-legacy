<footer role="contentinfo" aria-label="footer" ng-controller='footerCtrl' >

  <div class="container">

    <section class="row"><section class="row">

      <div class="col-sm-3 footer-1">
        <div class="well well-round well-sm">
            <p aria-hidden="true"><a href="https://pyrus.ubiqsmart.com/"><img src="images/logo-pyrus.svg" height="55px" width="auto" alt="Ubiq Wallet" /></a></p>
        </div>
        <p><span translate="FOOTER_1">Open-Source, client-side tool for easily & securely interacting with the Ubiq network.</span></p>
        <br />
        <p><a role="link" tabindex="0" data-toggle="modal" data-target="#disclaimerModal" translate="FOOTER_4"> Disclaimer </a></p>
      </div>

      <div class="col-sm-6 footer-2">
        <h5><i aria-hidden="true">💝</i> Donate</h5>
        <ul><li>
          <p>Pyrus is based on <a href='https://myetherwallet.com' target='_blank'>MyEtherWallet</a>, and is developed/maintained by the Ubiq development team. You can support Pyrus or the MEW devs by donating UBQ or ETH to:</p>
        </li>
        <li>The Ubiq Devs: <strong>0xE0F39621764F2540cd2bC3017DA041B1E4eEDCc2</strong>
        <li>MyEtherWallet: <strong>0x7cB57B5A97eAbe94205C07890BE4c1aD31E486A8</strong>
        </ul>
      </div>

      <div class="col-sm-3 footer-3">
        <h5><i aria-hidden="true">🌎</i> On the Web</h5>
        <ul>
          <li><a aria-label="my ether wallet.com" href="https://pyrus.ubiqsmart.com" target="_blank" style="">Pyrus</a></li>
          <li><a aria-label="my ether wallet github" href="https://github.com/ubiq/pyruswallet" target="_blank">Github: Pyrus</a></li>
          <li><a aria-label="twitter" href="https://twitter.com/ubiqsmart" target="_blank">Twitter</a></li>
          <li><a aria-label="medium" href="https://medium.com/the-ubiq-report" target="_blank">Blog</a></li>
          <li><a aria-label="slack" href="http://slack.ubiqsmart.com" target="_blank">Slack</a></li>
        </ul>
      </div>

    </section></section>

    <p ng-show="showBlocks" class="text-right" style="font-size: 10px">Latest Block#: {{currentBlockNumber}}</p>

  </div>

  @@if (site === 'mew' ) { @@include( './footer-disclaimer-modal.tpl',   { "site": "mew" } ) }
  @@if (site === 'cx'  ) { @@include( './footer-disclaimer-modal.tpl',   { "site": "cx"  } ) }


</footer>
</main>
</body>
</html>
