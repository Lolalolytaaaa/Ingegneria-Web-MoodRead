-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Creato il: Gen 27, 2026 alle 14:26
-- Versione del server: 10.4.32-MariaDB
-- Versione PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `moodread_progetto`
--

-- --------------------------------------------------------

--
-- Struttura della tabella `libri_biblioterapia`
--

CREATE TABLE `libri_biblioterapia` (
  `id` int(11) NOT NULL,
  `titolo` varchar(255) NOT NULL,
  `autore` varchar(150) DEFAULT NULL,
  `citazione` text DEFAULT NULL,
  `descrizione` text DEFAULT NULL,
  `cover_image` varchar(500) DEFAULT NULL,
  `emozione_target` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dump dei dati per la tabella `libri_biblioterapia`
--

INSERT INTO `libri_biblioterapia` (`id`, `titolo`, `autore`, `citazione`, `descrizione`, `cover_image`, `emozione_target`) VALUES
(1, 'L\'istituto', 'Stephen King', '\"L\'Istituto è come il motel di un film dell\'orrore. Chi prende una stanza non ne esce più.\"', '\"Nel cuore della notte, Luke Ellis viene rapito e i suoi genitori assassinati. Si risveglia nell\'Istituto, una struttura segreta nascosta nei boschi del Maine, dove bambini dotati di poteri speciali come telepatia e telecinesi vengono imprigionati e sottoposti a esperimenti crudeli per scopi oscuri. Luke dovrà trovare un modo per fuggire da un luogo da cui nessuno è mai scappato.\"', '/covers/istituto.jpg', 'carico'),
(2, 'Shining', 'Stephen King', '\"I mostri sono reali, e anche i fantasmi sono reali. Vivono dentro di noi e, a volte, vincono.\"', '\"Jack Torrance, scrittore in crisi ed ex alcolista, accetta il lavoro di guardiano invernale all\'Overlook Hotel, un albergo isolato tra le montagne del Colorado. Si trasferisce lì con la moglie Wendy e il figlio Danny, dotato di misteriosi poteri extrasensoriali chiamati \'luccicanza\' (shining). Mentre la neve blocca ogni via di fuga, le forze oscure dell\'hotel iniziano a possedere la mente di Jack, trasformandolo in una minaccia mortale per la sua stessa famiglia.\"', '/covers/shining.jpg', 'carico'),
(3, 'IT', 'Stephen King', '\"Forse non esistono i buoni amici o i cattivi amici. Forse ci sono solo amici, persone che ti stanno accanto quando ti fai male e che ti aiutano a non sentirti solo. Forse ne vale sempre la pena di avere paura per loro.\"', '\"A Derry, nel Maine, una piccola città apparentemente tranquilla, un\'antica forza malvagia si risveglia ogni 27 anni per nutrirsi delle paure dei bambini. Sette ragazzini emarginati, uniti nel \'Club dei Perdenti\', devono affrontare i loro peggiori incubi per combattere Pennywise, il clown danzante, in una promessa di sangue che li richiamerà a casa anche da adulti.\"', '/covers/it.jpg', 'carico'),
(4, 'Divergent', 'Veronica Roth', '\"Una scelta può trasformarti. Una scelta può distruggerti. Una scelta ti definisce.\"', '\"In una Chicago distopica, la società è divisa in cinque fazioni consacrate ognuna a una virtù diversa. Beatrice \'Tris\' Prior scopre di essere una Divergente, qualcuno che non appartiene a nessun gruppo e per questo considerata pericolosa. Mentre cerca di nascondere la sua natura, scopre un complotto per distruggere tutti i Divergenti e dovrà scegliere da che parte stare prima che sia troppo tardi.\"', '/covers/divergent.jpg', 'carico'),
(5, 'Allegiant', 'Veronica Roth', '\"Siamo persone danneggiate. Non siamo perfetti. Ma ci ripariamo a vicenda. Ci guariamo a vicenda.\"', '\"Il sistema delle fazioni è crollato e la città è nel caos. Tris e Tobias decidono di varcare la recinzione che circonda Chicago per scoprire la verità su ciò che c\'è fuori. Si ritroveranno di fronte a una realtà sconvolgente che metterà in discussione tutto ciò in cui hanno sempre creduto, costringendoli a scelte impossibili tra amore, lealtà e sacrificio.\"', '/covers/allegiant.jpg', 'carico'),
(6, 'Insurgent', 'Veronica Roth', '\"La verità è come un animale selvaggio, è troppo potente per rimanere in gabbia.\"', '\"La guerra è ormai scoppiata tra le fazioni. Tris cerca disperatamente alleati mentre fugge dalla fazione degli Eruditi guidata da Jeanine Matthews. Ma oltre ai nemici esterni, deve combattere i suoi demoni interiori: il dolore per la perdita dei genitori e il terribile senso di colpa per aver ucciso un amico. Per salvare ciò che resta del suo mondo, dovrà scoprire la verità sul passato della sua famiglia.\"', '/covers/insurgent.jpg', 'carico'),
(7, 'It Ends with Us', 'Colleen Hoover', '\"Non esistono persone cattive. Siamo tutti persone che, qualche volta, fanno cose cattive.\"', '\"Lily Bloom si è appena trasferita a Boston per inseguire il suo sogno di aprire un negozio di fiori. L\'incontro casuale con l\'affascinante neurochirurgo Ryle Kincaid sembra l\'inizio di una favola, ma la loro relazione intensa porta a galla lati oscuri di Ryle che ricordano a Lily un passato doloroso. Quando il suo primo amore, Atlas Corrigan, riappare improvvisamente nella sua vita, Lily si troverà di fronte a una scelta difficile e dolorosa per spezzare il ciclo della violenza.\"', '/covers/itendswithus.jpg', 'innamorato'),
(8, 'Il cavaliere d\'inverno', 'Paullina Simons', '\"Tu sei il mio respiro, Tatiana. Senza di te non esisto.\"', '\"Leningrado, 1941. Mentre le armate tedesche avanzano e l\'inverno minaccia di distruggere la città, la giovane Tatiana incontra Alexander, un misterioso ufficiale dell\'Armata Rossa. Tra loro nasce un amore proibito e travolgente che dovrà sopravvivere alla fame, alla guerra e ai terribili segreti che Alexander nasconde, in una lotta disperata contro il destino e la morte.\"', '/covers/ilcavalieredinverno.jpg', 'innamorato'),
(9, 'Sette mariti di Evelyn Hugo', 'Taylor Jenkins Reid', '\"Ho passato metà del mio tempo ad amarla e l\'altra metà a nascondere quanto l\'amassi.\"', '\"Evelyn Hugo, leggendaria icona di Hollywood ormai anziana e reclusa, decide finalmente di dire la verità sulla sua vita scandalosa e sui suoi sette matrimoni. Sceglie una sconosciuta reporter, Monique Grant, per scrivere la sua biografia. Ma mentre le storie dei mariti si susseguono, emerge il vero segreto di Evelyn: un amore proibito, intenso e struggente che ha attraversato decenni, l\'unico per cui valeva davvero la pena lottare.\"', '/covers/isettemaritidievelynhugo.jpg', 'innamorato'),
(10, 'Chiamami col tuo nome', 'André Aciman', '\"Strappiamo via così tanto di noi stessi per guarire in fretta dalle ferite che finiamo in bancarotta a trent\'anni... Ma non provare nulla, per non provare nulla, è uno spreco enorme.\"', '\"In una calda estate della Riviera ligure a metà anni Ottanta, il diciassettenne Elio trascorre le giornate tra musica, libri e nuotate. L\'arrivo di Oliver, un ventiquattrenne americano ospite di suo padre per sei settimane, sconvolge la sua tranquillità. Tra i due nasce un\'attrazione improvvisa e travolgente, fatta di sguardi, silenzi e un desiderio che li cambierà per sempre. Un racconto struggente sull\'intensità del primo amore e sulla paura di perdere l\'attimo.\"', '/covers/chiamamicoltuonome.jpg', 'innamorato'),
(11, 'Cime tempestose', 'Emily Brontë', '\"Di qualunque cosa siano fatte le nostre anime, la mia e la sua sono la stessa cosa.\"', '\"Nella desolata e ventosa brughiera dello Yorkshire, si consuma l\'amore selvaggio e distruttivo tra Heathcliff, un trovatello dall\'animo oscuro, e Catherine Earnshaw. Un legame così profondo e ossessivo che nemmeno il matrimonio di lei con un altro uomo, né la morte stessa, riusciranno a spezzare. Heathcliff dedicherà la sua vita a una crudele vendetta, dimostrando che l\'amore può essere la forza più potente e terribile della natura.\"', '/covers/cimetempestose.jpg', 'innamorato'),
(12, 'Anna Karenina', 'Lev Tolstoj', '\"Cercava di non guardarla, come se fosse il sole, ma la vedeva, come il sole, anche senza guardarla.\"', '\"Nella Russia dell\'Ottocento, l\'affascinante e rispettata Anna Karenina sfida le rigide convenzioni sociali abbandonando il marito e il figlio per seguire una passione travolgente per il conte Vronskij. La loro storia d\'amore, intensa e scandalosa, la trascinerà in un vortice di isolamento e disperazione, mostrando il prezzo terribile che a volte si paga per inseguire il proprio cuore.\"', '/covers/annakarenina.jpg', 'innamorato'),
(13, 'L\'amore ai tempi del colera', 'Gabriel García Márquez', '\"«E fino a quando crede che possiamo continuare con questo andirivieni del cazzo?» domandò lei. Florentino Ariza aveva la risposta pronta da cinquantatré anni, sette mesi e undici giorni, notti comprese. «Per tutta la vita» disse.\"', '\"Florentino Ariza si innamora perdutamente di Fermina Daza in gioventù, ma lei sceglie di sposare un ricco medico. Florentino non si arrende: decide di diventare un uomo degno di lei e aspetta pazientemente che il destino li riunisca. Dopo cinquantun anni, nove mesi e quattro giorni di attesa incrollabile, avrà finalmente l\'occasione di rinnovare la sua promessa d\'amore eterno.\"', '/covers/lamoreaitiempidelcolera.jpg', 'innamorato'),
(14, 'Le pagine della nostra vita', 'Nicholas Sparks', '\"L\'amore più bello è quello che risveglia l\'anima e che ci fa desiderare di arrivare più in alto; è quello che incendia il nostro cuore e porta la pace nella nostra mente.\"', '\"In una casa di riposo, un anziano signore legge ogni giorno le pagine di un vecchio diario a una donna che ha perso la memoria. È la storia di Noah e Allie, due ragazzi che si sono amati perdutamente durante un\'estate nella Carolina del Nord e che la guerra e le differenze sociali hanno tentato di dividere. Un racconto commovente sulla forza dei ricordi e su un amore capace di compiere miracoli.\"', '/covers/lepaginedellanostravita.jpg', 'innamorato'),
(15, 'Jane Eyre', 'Charlotte Bronte', '\"Non sono un uccello e non c\'è rete che possa intrappolarmi: sono una creatura umana libera, con una volontà indipendente.\"', '\"Jane, orfana e maltrattata, cresce con una forza d\'animo incrollabile che la porta a diventare istitutrice a Thornfield Hall. Qui incontra il misterioso e tormentato Mr. Rochester, con cui nasce un legame intellettuale e passionale profondo. Ma un terribile segreto nascosto nella soffitta della dimora minaccia di distruggere la loro felicità, costringendo Jane a scegliere tra l\'amore e la propria dignità.\"', '/covers/janeeyre.jpg', 'innamorato'),
(16, 'Il Grande Gatsby', 'F. Scott Fitzgerald', '\"Al tocco delle sue labbra, sbocciò per lui come un fiore e l\'incarnazione fu completa.\"', '\"Nella sfolgorante Età del Jazz, il misterioso milionario Jay Gatsby organizza feste leggendarie nella sua villa a Long Island con un unico, segreto scopo: ritrovare Daisy Buchanan, l\'amore della sua vita perso anni prima. Una storia iconica sull\'ossessione, sulla speranza incrollabile e sul sogno disperato di poter ripetere il passato per riconquistare un amore perduto.\"', '/covers/ilgrandegatsby.jpg', 'innamorato'),
(17, 'Dieci piccoli indiani', 'Agatha Christie', '\"Dieci piccoli indiani andarono a pranzo... e poi non ne rimase nessuno.\"', '\"Dieci sconosciuti vengono invitati, con pretesti diversi, su una lussuosa isola deserta da un misterioso ospite che non si fa vedere. Durante la prima cena, una voce inumana li accusa uno per uno di aver commesso un crimine impunito. Da quel momento, iniziano a morire uno dopo l\'altro, seguendo inquietantemente il testo di un\'antica filastrocca appesa nelle loro camere. Con il terrore che cresce e nessuna via di fuga, i sopravvissuti capiscono una verità agghiacciante: l\'assassino è uno di loro.\"', '/covers/diecipiccoliindiani.jpg', 'ansioso'),
(18, 'Assassinio allo specchio', 'Agatha Christie', '\"Lo specchio si incrinò da parte a parte; «La maledizione è su di me» gridò la Dama di Shalott.\"', '\"La sonnolenta St. Mary Mead è in fermento: la famosa attrice hollywoodiana Marina Gregg si è trasferita nella villa locale. Durante il ricevimento di benvenuto, però, una sua ammiratrice muore improvvisamente dopo aver bevuto un cocktail che sembrava destinato alla diva. Un attimo prima della tragedia, Marina è stata vista fissare il vuoto con un\'espressione di puro terrore, come se avesse visto un fantasma. Spetterà a Miss Marple capire quale oscuro segreto del passato sia tornato a perseguitarla.\"', '/covers/assassinioallospecchio.jpg', 'ansioso'),
(19, 'Assassinio sull\'Orient Express', 'Agatha Christie', '\"L\'impossibile non può essere accaduto, quindi l\'impossibile deve essere possibile, a dispetto delle apparenze.\"', '\"Mentre il lussuoso Orient Express attraversa i Balcani, una tempesta di neve blocca il treno nel cuore della notte. Il mattino seguente, il ricco uomo d\'affari Samuel Ratchett viene trovato morto nel suo scompartimento, pugnalato dodici volte, con la porta chiusa dall\'interno. Isolato dal resto del mondo, Hercule Poirot deve interrogare i passeggeri, scoprendo che l\'assassino è ancora a bordo e che quasi tutti avevano un motivo per volere la vittima morta.\"', '/covers/assassiniosullorientexpress.jpg', 'ansioso'),
(20, 'Il pericolo senza nome', 'Agatha Christie', '\"Quella non era una vespa, Mademoiselle. Era una pallottola.\"', '\"Mentre si gode una vacanza sulla costa della Cornovaglia, Hercule Poirot incontra la giovane Nick Buckley, proprietaria della decadente \'End House\'. La ragazza racconta con leggerezza di essere scampata a tre strani incidenti quasi fatali in pochi giorni. Poirot capisce subito che non si tratta di sfortuna, ma di tentativi di omicidio falliti. Qualcuno vuole Nick morta, e l\'investigatore deve scoprire l\'identità di un assassino invisibile nascosto tra gli amici della ragazza prima che riesca nel suo intento.\"', '/covers/ilpericolosenzanome.jpg', 'ansioso'),
(21, 'La verità sul caso di Harry Quebert', 'Joel Dicker', '\"La vita è una lunga caduta, Marcus. La cosa più importante è saper cadere.\"', '\"Marcus Goldman, giovane scrittore di successo in piena crisi creativa, cerca rifugio nel New Hampshire dal suo mentore, il grande Harry Quebert. La tranquillità viene spazzata via quando il corpo di Nola Kellergan, una ragazza scomparsa trentatré anni prima, viene ritrovato sepolto nel giardino della villa di Quebert, proprio accanto al manoscritto del suo capolavoro. Per salvare il suo amico dalla pena di morte, Marcus dovrà immergersi in un\'indagine in cui ogni verità ne nasconde un\'altra, scoprendo che il passato non muore mai davvero.\"', '/covers/laveritasulcasoharryquebert.jpg', 'ansioso'),
(22, 'L\'Enigma della camera 622', 'Joel Dicker', '\"La vita è un romanzo di cui si conosce già la fine: alla fine si muore. L\'unica cosa che conta non è come finisce, ma come riempiamo le pagine.\"', '\"Una notte di dicembre, un omicidio irrisolto scuote il lussuoso Palace de Verbier sulle Alpi svizzere. Anni dopo, lo stesso Joël Dicker soggiorna nell\'hotel per riprendersi da una delusione amorosa, ma nota un dettaglio inquietante: la camera 622 non esiste più nel numero delle stanze. Spinto dalla curiosità e aiutato da un\'affascinante aspirante scrittrice, inizia a indagare sul passato, scoperchiando un intreccio di segreti bancari, triangoli amorosi e giochi di potere in cui nessuno è davvero chi dice di essere.\"', '/covers/lenigmadellacamera622.jpg', 'ansioso'),
(23, 'L\'Alchimista', 'Paulo Coelho', '\"Quando desideri una cosa, tutto l\'Universo trama affinché tu possa realizzarla.\"', '\"Santiago, un giovane pastore andaluso, intraprende un viaggio avventuroso dalle sue terre natie fino al deserto egiziano, alla ricerca di un tesoro sognato ai piedi delle Piramidi. Lungo il cammino incontrerà una zingara, un re e un misterioso alchimista che lo guideranno verso la scoperta più grande: il vero tesoro non è l\'oro materiale, ma la capacità di ascoltare il proprio cuore e il coraggio di realizzare la propria Leggenda Personale.\"', '/covers/lalchimista.jpg', 'felice'),
(24, 'Finchè il caffè è caldo', 'Toshikazu Kawaguchi', '\"Anche se non si può cambiare il presente tornando nel passato, si può tornare nel presente con un cuore diverso.\"', '\"In un piccolo vicolo di Tokyo esiste una caffetteria leggendaria che offre ai suoi clienti un\'esperienza unica: la possibilità di viaggiare nel tempo. Ma le regole sono rigide e strane: non ci si può alzare dalla sedia, il presente non cambierà qualunque cosa accada e, soprattutto, bisogna tornare indietro prima che il caffè si raffreddi. Quattro storie di persone che vogliono rivedere qualcuno per l\'ultima volta, scoprendo che, anche se non si può cambiare la realtà, si può sempre cambiare il proprio cuore.\"', '/covers/fincheilcaffeecaldo.jpg', 'felice'),
(25, 'I miei giorni alla libreria Morisaki', 'Satoshi Yagisawa', '\"Non importa quanto il mondo possa essere crudele o quanto ti senta sola, i libri ti accoglieranno sempre. Sono lì per te, pronti a offrirti un rifugio sicuro.\"', '\"Takako, venticinquenne col cuore spezzato e senza più un lavoro, accetta con riluttanza di trasferirsi nella stanza sopra la vecchia libreria dell\'eccentrico zio Satoru, nel quartiere di Jimbocho, il paradiso dei lettori a Tokyo. Circondata da migliaia di volumi usati, inizialmente si sente persa, ma lentamente scoprirà che le storie hanno il potere di curare le ferite dell\'anima e che la vita può ricominciare proprio dove meno te lo aspetti.\"', '/covers/imieigiorniallalibreriamorisaki.jpg', 'felice'),
(26, 'Il Piccolo Principe', 'Antoine de Saint-Exupéry', NULL, NULL, NULL, 'felice'),
(27, 'La mia famiglia e altri animali', 'Gerald Durrell', NULL, NULL, NULL, 'felice'),
(28, 'Il barone rampante', 'Italo Calvino', NULL, NULL, NULL, 'felice'),
(29, 'Se i gatti scomparissero dal mondo', 'Genki Kawamura', NULL, NULL, NULL, 'triste'),
(30, 'Norwegian Wood', 'Haruki Murakami', NULL, NULL, NULL, 'triste'),
(31, 'Una vita come tante', 'Hanya Yanagihara', NULL, NULL, NULL, 'triste'),
(32, 'Le otto montagne', 'Paolo Cognetti', NULL, NULL, NULL, 'triste'),
(33, 'Un giorno questo dolore ti sarà utile', 'Peter Cameron', NULL, NULL, NULL, 'triste'),
(34, 'Le notti bianche', 'Fëdor Dostoevskij', NULL, NULL, NULL, 'triste'),
(35, 'Il Buio oltre la siepe', 'Harper Lee', NULL, NULL, NULL, 'arrabbiato'),
(36, 'Fight Club', 'Chuck Palahniuk', NULL, NULL, NULL, 'arrabbiato'),
(37, '1984', 'George Orwell', NULL, NULL, NULL, 'arrabbiato'),
(38, 'Il conte di Montecristo', 'Alexandre Dumas', NULL, NULL, NULL, 'arrabbiato'),
(39, 'La fattoria degli animali', 'George Orwell', NULL, NULL, NULL, 'arrabbiato'),
(40, 'Arancia meccanica', 'Anthony Burgess', NULL, NULL, NULL, 'arrabbiato'),
(41, 'Guida galattica per gli autostoppisti', 'Douglas Adams', NULL, NULL, NULL, 'annoiato'),
(42, 'Il codice da Vinci', 'Dan Brown', NULL, NULL, NULL, 'annoiato'),
(43, 'L\'ombra del vento', 'Carlos Ruiz Zafón', NULL, NULL, NULL, 'annoiato'),
(44, 'Lo Hobbit', 'J.R.R. Tolkien', NULL, NULL, NULL, 'annoiato'),
(45, 'Dune', 'Frank Herbert', NULL, NULL, NULL, 'annoiato'),
(46, 'Ready Player One', 'Ernest Cline', NULL, NULL, NULL, 'annoiato'),
(47, 'Tre uomini in barca', 'Jerome K. Jerome', NULL, NULL, NULL, 'divertito'),
(48, 'Il diario di Bridget Jones', 'Helen Fielding', NULL, NULL, NULL, 'divertito'),
(49, 'Marcovaldo', 'Italo Calvino', NULL, NULL, NULL, 'divertito'),
(50, 'Cent\'anni di solitudine', 'G.G. Márquez', NULL, NULL, NULL, 'divertito'),
(51, 'Don Chisciotte', 'Miguel de Cervantes', NULL, NULL, NULL, 'divertito'),
(52, 'Il gabbiano Jonathan Livingston', 'Richard Bach', NULL, NULL, NULL, 'divertito'),
(53, 'I dolori del giovane Werther', 'J.W. Goethe', NULL, NULL, NULL, 'divertito');

--
-- Indici per le tabelle scaricate
--

--
-- Indici per le tabelle `libri_biblioterapia`
--
ALTER TABLE `libri_biblioterapia`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT per le tabelle scaricate
--

--
-- AUTO_INCREMENT per la tabella `libri_biblioterapia`
--
ALTER TABLE `libri_biblioterapia`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
