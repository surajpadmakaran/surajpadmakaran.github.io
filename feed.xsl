<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:output method="html" doctype-system="about:legacy-compat" encoding="UTF-8" />
  <xsl:template match="/rss/channel">
    <html lang="en">
      <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1" />
        <title><xsl:value-of select="title" /> — RSS feed</title>
        <link rel="preconnect" href="https://fonts.googleapis.com" />
        <link href="https://fonts.googleapis.com/css2?family=Newsreader:opsz,wght@6..72,500;6..72,650&amp;family=IBM+Plex+Sans:wght@400;600&amp;display=swap" rel="stylesheet" />
        <style>
          :root { --bg:#f6f8fa; --surface:#ffffff; --ink:#14202c; --ink-2:#43566a; --line:#dde5ec; --accent:#b45309; --accent-bright:#d97706; --slate-deep:#16232f; }
          @media (prefers-color-scheme: dark) { :root { --bg:#0d141b; --surface:#16232f; --ink:#eef3f7; --ink-2:#b9c8d4; --line:#2b3d4e; } }
          * { box-sizing:border-box; }
          body { margin:0; background:var(--bg); color:var(--ink); font-family:"IBM Plex Sans",-apple-system,"Segoe UI",sans-serif; font-size:18px; line-height:1.6; }
          .band { background:#16232f; color:#eef3f7; padding:34px 20px 30px; }
          .wrap { max-width:760px; margin:0 auto; padding:0 20px; }
          .band .wrap { padding:0 20px; }
          .kicker { font-family:"IBM Plex Mono",monospace; letter-spacing:.14em; text-transform:uppercase; font-size:13px; color:#d97706; margin:0 0 10px; }
          h1 { font-family:"Newsreader",Georgia,serif; font-weight:650; font-size:34px; line-height:1.2; margin:0 0 12px; }
          .band p { color:#b9c8d4; margin:0; max-width:38em; }
          .cta { display:inline-block; margin-top:20px; background:#b45309; color:#fff; font-weight:600; text-decoration:none; padding:13px 24px; border-radius:999px; }
          .cta:hover { background:#d97706; }
          main .wrap { padding-top:28px; padding-bottom:40px; }
          .post { background:var(--surface); border:1px solid var(--line); border-radius:12px; padding:20px 22px; margin:0 0 16px; }
          .post h2 { font-family:"Newsreader",Georgia,serif; font-size:23px; line-height:1.3; margin:0 0 6px; }
          .post h2 a { color:var(--ink); text-decoration:none; }
          .post h2 a:hover { color:var(--accent); }
          .date { color:var(--ink-2); font-size:14.5px; margin:0 0 8px; }
          .post p.desc { color:var(--ink-2); margin:0; }
          footer { color:var(--ink-2); font-size:15px; padding:0 0 44px; }
          footer a { color:var(--accent); }
        </style>
      </head>
      <body>
        <div class="band">
          <div class="wrap">
            <p class="kicker">RSS feed</p>
            <h1>You’re looking at this blog’s RSS feed</h1>
            <p>Nothing is broken — this page is a machine-readable list of the latest chapters from <strong>Simply Explained by Suraj</strong>, for use in a feed reader app. Prefer email? Subscribe free and get a free Online Safety 101 guide:</p>
            <a class="cta" href="https://surajpadmakaran.github.io/#subscribe">Subscribe by email and get a free guide →</a>
          </div>
        </div>
        <main>
          <div class="wrap">
            <xsl:for-each select="item">
              <article class="post">
                <h2><a href="{link}"><xsl:value-of select="title" /></a></h2>
                <p class="date"><xsl:value-of select="pubDate" /></p>
                <p class="desc"><xsl:value-of select="description" /></p>
              </article>
            </xsl:for-each>
            <footer>
              <p><a href="https://surajpadmakaran.github.io/">← Back to Simply Explained by Suraj</a> · A SafeGrade project · Cybersecurity, explained simply</p>
            </footer>
          </div>
        </main>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>
