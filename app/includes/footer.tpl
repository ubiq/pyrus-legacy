<section class="pre-footer">
  <div class="container">
    <p>Pyrus.ubiqsmart.com does not hold your keys for you. We cannot access accounts, recover keys, reset passwords, nor reverse transactions. Protect your keys &amp; always check that you are on correct URL. <a role="link" tabindex="0" data-toggle="modal" data-target="#disclaimerModal"> You are responsible for your security.</a>
    </p>
  </div>
</section>

<footer class="footer" role="content" aria-label="footer" ng-controller='footerCtrl' >

  <article class="block__wrap" style="max-width: 1780px; margin: auto;">

    <section class="footer--left">
      <div class="well well-sm well-notopmargin">
        <a href="/"><img src="images/logo-myetherwallet.svg" height="45px" width="auto" alt="Ubiq Wallet" class="footer--logo"/></a>
      </div>
      <p><span translate="FOOTER_1">Free, open-source, client-side interface for generating Ubiq wallets &amp; more. Interact with the Ubiq blockchain easily &amp; securely. Double-check the URL ( .com ) before unlocking your wallet.</span></p>

      <p><a aria-label="knowledge base" href="https://myetherwallet.groovehq.com/help_center" target="_blank" rel="noopener" role="link" tabindex="0">
        Knowledge Base
      </a></p>

      <p><a href="https://pyrus.ubiqsmart.com/helpers.html" target="_blank" rel="noopener" role="link" tabindex="0">
        Helpers
      </a></p>

      <p><a href="https://pyrus.ubiqsmart.com/signmsg.html" target="_blank" rel="noopener" role="link" tabindex="0">
        Sign Message
      </a></p>

      <p><a data-target="#disclaimerModal" data-toggle="modal" target="_blank" rel="noopener" role="link" tabindex="0"  translate="FOOTER_4"> Disclaimer </a></p>

    </section>

    <section class="footer--cent">
        <h5> <i aria-hidden="true">👫</i> You can support us by supporting our blockchain-family.</h5>
        <p>Consider using MEW affiliate links to...</p>
        <p><a href="https://www.ledgerwallet.com/r/fa4b?path=/products/" target="_blank" rel="noopener">Buy a Ledger Wallet</a></p>

        <h5><i aria-hidden="true">💝</i> Donations are always appreciated!</h5>
        <p>Pyrus is based on MyEtherWallet, and is developed/maintained by the Ubiq development team. You can support Pyrus or the MEW devs by donating UBQ or ETH.</p>
        <p>The Ubiq Devs: <span class="mono wrap"><small>0xE0F39621764F2540cd2bC3017DA041B1E4eEDCc2</small></span></p>
        <p>MyEtherWallet: <span class="mono wrap"><small>0x7cB57B5A97eAbe94205C07890BE4c1aD31E486A8</small></span></p>
        <!--
        <p>MYD: <span class="mono wrap">mewsupport.eth <small>0xf7e983781609012307f2514f63D526D83D24F466</small></span></p>
        -->

        <h5 ng-hide="curLang=='en'"> <i>🏅</i> <span translate="Translator_Desc"> Thank you to our translators </span></h5>
        <p ng-hide="curLang=='en'">
          <span translate="TranslatorName_1"></span>
          <span translate="TranslatorName_2"></span>
          <span translate="TranslatorName_3"></span>
          <span translate="TranslatorName_4"></span>
          <span translate="TranslatorName_5"></span>
        </p>

    </section>

    <section class="footer--righ">

      <p><a aria-label="website via pyrus dot ubiqsmart dot com" href="https://pyrus.ubiqsmart.com" target="_blank" rel="noopener" role="link" tabindex="0">
        Pyrus.ubiqsmart.com
      </a></p>

      <p><a aria-label="Pyrus github" href="https://github.com/ubiq/pyruswallet" target="_blank" rel="noopener" role="link" tabindex="0">
        Github: Current Site &amp; CX
      </a></p>

      <p><a aria-label="our organization on github" href="https://github.com/Ubiq" target="_blank" rel="noopener" role="link" tabindex="0">
        Github: Ubiq
      </a></p>

      <p><a aria-label="download & run locally" href="https://github.com/ubiq/pyruswallet/releases/latest" target="_blank" rel="noopener" role="link" tabindex="0">
        Github: Latest Release
      </a></p>

      <p><a aria-label="my ether wallet chrome extension" href="https://chrome.google.com/webstore/detail/pyrus-cx/kkllochpehlephblgmhibpmgmeagkbfa?hl=en" target="_blank" rel="noopener" role="link" tabindex="0">
        Pyrus CX
      </a></p>

      <p><a aria-label="Anti-Phishing chrome extension" href="https://chrome.google.com/webstore/detail/etheraddresslookup/pdknmigbbbhmllnmgdfalmedcmcefdfn" target="_blank" rel="noopener" role="link" tabindex="0">
        Anti-Phishing CX
      </a></p>

      <p>
        <a aria-label="join our slack" href="https://slack.ubiqsmart.com/" target="_blank" rel="noopener" role="link" tabindex="0">Slack</a>
        &middot;
        <a aria-label="reddit" href="https://www.reddit.com/r/Ubiq/" target="_blank" rel="noopener" role="link" tabindex="0">Reddit</a>
        &middot;
        <a aria-label="twitter" href="https://twitter.com/ubiqsmart" target="_blank" rel="noopener" role="link" tabindex="0">Twitter</a>
        &middot;
        <a aria-label="medium" href="https://medium.com/the-ubiq-report" target="_blank" rel="noopener" role="link" tabindex="0">Medium</a>
      </p>




      <p ng-show="showBlocks">Latest Block#: {{currentBlockNumber}} </p>

    </section>

  </article>

</div>


</footer>

@@if (site === 'mew' ) { @@include( './footer-disclaimer-modal.tpl',   { "site": "mew" } ) }
@@if (site === 'cx'  ) { @@include( './footer-disclaimer-modal.tpl',   { "site": "cx"  } ) }

</main>
</body>
</html>
