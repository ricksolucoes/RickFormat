# RickFormat

<p align="center">
  <b>RickFormat</b> is a Delphi library created to be able to mask the edit as it is typed. Using delphi's Fluent Interface.<br> 
</p>

<h2>⚙️ Install</h2>
<p>*Pre-requisites Delphi FMX</p>
<li><strong>Installation with BOSS</strong>: <br>
<pre>$ boss install https://github.com/ricksolucoes/RickFormat</pre>

<li><strong>Manual Installation</strong>: <br>
Add the following folders to your project, in <em>Project &gt; Options &gt; Resource Compiler &gt; Directories and Conditionals &gt; Include file search path</em></li>
<pre><code>../RickFormat/src</code></pre>

<h2>⚡️ How to use the project</h2>
<pre><code>../RickFormat/src</code></pre>

<li><strong>How to use custom mask.</strong>: <br>

<pre><span class="pl-k">uses</span>

  RICK.Format;

<span class="pl-k">implementation</span>

procedure Tform.EditDataTyping(Sender: TObject);
begin
  TRICKFormat.New.FormatExtra('##.###-###-####>###').Customized(Sender);
end;</span></pre>

<li><strong>How to use Brazil's Telephone mask. Using the interface. </strong>: <br>

<pre><span class="pl-k">uses</span>
  RICK.Format,
  RICK.Format.Interfaces;

<span class="pl-k">implementation</span>

procedure Tform.EditDataTyping(Sender: TObject);
var
  LRICKFormat: iRICKFormat;
begin
  LRICKFormat:= TRICKFormat.New;
  LRICKFormat.LandlinePhone(Sender);
end;</span></pre>

<li><strong>How to use Brazil's Mobile mask. </strong>: <br>

<pre><span class="pl-k">uses</span>

  RICK.Format;

<span class="pl-k">implementation</span>

procedure Tform.EditDataTyping(Sender: TObject);
begin
  TRICKFormat.New.Mobile(Sender);
end;</span></pre>

<li><strong>How to use Brazil's CNPJ mask.</strong>: <br>

<pre><span class="pl-k">uses</span>

  RICK.Format;

<span class="pl-k">implementation</span>

procedure Tform.EditDataTyping(Sender: TObject);
begin
  TRICKFormat.New.CNPJ(Sender);
end;</span></pre>

<li><strong>How to use Brazil's CPF mask.</strong>: <br>

<pre><span class="pl-k">uses</span>

  RICK.Format;

<span class="pl-k">implementation</span>

procedure Tform.EditDataTyping(Sender: TObject);
begin
  TRICKFormat.New.CPF(Sender);
end;</span></pre>

<li><strong>How to use Brazil's CPF or CNPJ mask.</strong>: <br>

<pre><span class="pl-k">uses</span>

  RICK.Format;

<span class="pl-k">implementation</span>

procedure Tform.EditDataTyping(Sender: TObject);
begin
  TRICKFormat.New.CNPJorCPF(Sender);
end;</span></pre>

<li><strong>How to use Brazil's State Registration mask.</strong>: <br>

<pre><span class="pl-k">uses</span>

  RICK.Format;

<span class="pl-k">implementation</span>

procedure Tform.EditDataTyping(Sender: TObject);
begin
  TRICKFormat.New.FormatExtra('rj').StateRegistration(Sender);
end;</span></pre>

<li><strong>How to use Brazil's Currency Value mask.</strong>: <br>

<pre><span class="pl-k">uses</span>

  RICK.Format;

<span class="pl-k">implementation</span>

procedure Tform.EditDataTyping(Sender: TObject);
begin
  TRICKFormat.New.CurrencyValue(Sender);
end;</span></pre>

<li><strong>How to use Brazil's Currency value with acronym mask.</strong>: <br>

<pre><span class="pl-k">uses</span>

  RICK.Format;

<span class="pl-k">implementation</span>

procedure Tform.EditDataTyping(Sender: TObject);
begin
  TRICKFormat.New.FormatExtra('R$').CurrencyValue(Sender);
end;</span></pre>