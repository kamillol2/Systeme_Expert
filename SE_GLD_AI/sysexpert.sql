-- phpMyAdmin SQL Dump
-- version 5.3.0-dev+20220527.6201c7f2ba
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost
-- Généré le : mar. 31 mai 2022 à 21:23
-- Version du serveur : 8.0.29
-- Version de PHP : 8.1.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `sysexpert`
--
CREATE DATABASE IF NOT EXISTS `sysexpert` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
USE `sysexpert`;

-- --------------------------------------------------------

--
-- Structure de la table `réponses`
--

CREATE TABLE `réponses` (
  `id` int NOT NULL,
  `contenu` varchar(1000) NOT NULL,
  `idparent` int DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `réponses`
--

INSERT INTO `réponses` (`id`, `contenu`, `idparent`) VALUES
(1, 'IL REFUSE DE DÉMARRER', NULL),
(2, 'IL SE FIGE OCCASIONNELLEMENT', NULL),
(3, 'SES MENUS SONT RALENTIS', NULL),
(4, 'IL SE COMPORTE BIZARREMENT', NULL),
(5, 'L\'ORDINATEUR EST BRANCHÉ SUR LE SECTEUR,MAIS AUCUNE LUMIÈRE NE S\'ALLUME,JE N\'ENTENDS AUCUN BRUIT', 1),
(6, 'LES LUMIÈRES S\'ALLUMENT MAIS L\'ÉCRAN RESTE NOIR', 1),
(7, 'L\'ÉCRAN AFFICHE UN TEXTE BLANC SUR FOND NOIR PUIS SE FIGE', 1),
(8, 'WINDOWS S\'AFFICHE MAIS NE VA PAS JUSQU\'AU BOUT DU DÉMARRAGE', 1),
(9, 'JE N\'ENTENDS RIEN DU TOUT', 6),
(10, 'J\'ENTENDS LE SON D\'ACCUEIL DE WINDOWS', 6),
(11, 'VOTRE ORDINATEUR S\'ÉTEINT BRUTALEMENT ET REDÉMARRE TOUT SEUL', 2),
(12, 'LA SOURIS NE RÉPOND PLUS DU TOUT VOTRE ORDINATEUR SE FIGE PARFOIS PENDANT PLUS DE5 SECONDES,QUAND IL NE SE BLOQUE PAS TOTALEMENT.', 2),
(13, 'DES DIZAINES DE LIGNES DE TEXTE ÉTRANGE DÉFILENT SUR FOND NOIR PENDANT PLUS DE 20 SECONDES', 11),
(14, 'TOUT SE PASSE COMME D\'HABITUDE', 11),
(15, 'PAS PARTICULIÈREMENT.', 12),
(16, 'ABSOLUMENT.', 12),
(17, 'PAS PARTICULIÈREMENT', 15),
(18, 'OUI, C\'EST SOUVENT LE MÊME LOGICIEL QUI POSE PROBLÈME', 15),
(19, 'HÉLAS OUI', 18),
(20, 'NON, IL EST RÉSOLU', 18),
(21, 'RIEN N\'A CHANGÉ', 16),
(22, 'LE PROBLÈME EST RÉSOLU', 16),
(23, 'OUI,CA M\'ARRIVE TRÈS OCCASIONNELLEMENT', 14),
(24, 'NON,ÇA M\'ARRIVE FRÉQUEMMENT', 14),
(25, 'PAS PARTICULIÈREMENT', 24),
(26, 'OUI,C\'EST SOUVENT LE MÊME LOGICIEL QUI POSE PROBLÈME', 24),
(27, 'HÉLAS OUI', 26),
(28, 'NON, IL EST RÉSOLU', 26),
(29, 'TOUS LES MENUS DE VOTRE ORDINATEUR SONT PLUS LENTS QU\'À L\'ACHAT.MAIS L\'ATTENTE N\'EST JAMAIS INTOLÉRABLE', 3),
(30, 'VOUS AVEZ TÉLÉCHARGÉ UN LOGICIEL PEU CONNU.QUAND VOUS L\'OUVREZ, TOUT DEVIENT LENT.DES FENÊTRES S\'OUVRENT TOUTES SEULES', 3),
(31, 'QUAND VOUS CLIQUEZ, IL VOUS ARRIVE DE PATIENTER PLUS DE DIX SECONDES. VOTRE SOURIS SACCADE ET MET PLUSIEURS SECONDES À TRAVERSER L\'ÉCRAN', 3),
(32, 'BEAUCOUP MIEUX', 30),
(33, 'PAS DU TOUT', 30),
(34, 'JE NE VOIS PAS DE DIFFÉRENCE', 33),
(35, 'JE N\'AI PAS RÉUSSI À ME DÉBARRASSER DU VIRUS', 33),
(36, 'IL VA NETTEMENT MIEUX', 33),
(37, 'JE NE VOIS PAS DE DIFFÉRENCE', 31),
(38, 'JE N\'AI PAS RÉUSSI À ME DÉBARRASSER DU VIRUS', 31),
(39, 'IL VA NETTEMENT MIEUX', 31),
(40, 'VOTRE SOURIS BOUGE TOUTE SEULE. VOS LOGICIELS S\'OUVRENT ET SE FERMENT SEULS. CERTAINS DOCUMENTS REFUSENT DE S\'OUVRIR', 4),
(41, 'LA DATE ET L\'HEURE REVIENNENT À ZÉRO À CHAQUE DÉMARRAGE', 4),
(42, 'JE NE VOIS PAS DE DIFFÉRENCE', 40),
(43, 'JE N\'AI PAS RÉUSSI À ME DÉBARRASSER DU VIRUS', 40),
(44, 'IL VA NETTEMENT MIEUX', 40);

-- --------------------------------------------------------

--
-- Structure de la table `résultats`
--

CREATE TABLE `résultats` (
  `id` int NOT NULL,
  `contenu` varchar(1000) DEFAULT NULL,
  `réponseid` int DEFAULT NULL,
  `isfinal` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `résultats`
--

INSERT INTO `résultats` (`id`, `contenu`, `réponseid`, `isfinal`) VALUES
(2, 'Quel est le problème de votre PC ?', NULL, 0),
(3, 'Quels sont les symptômes ?', 1, 0),
(4, 'Quels sont les symptômes ?', 2, 0),
(5, 'Quels sont les symptômes ?', 4, 0),
(6, 'Quels sont les symptômes ?', 3, 0),
(7, 'Vous rencontrez probablement un problème matériel, provenant de l\'alimentation, ou de la carte mère. Allez voir un réparateur.', 5, 1),
(8, 'Montez le volume des haut-parleurs au maximum et redémarrez l\'ordinateur. Entendez-vous quelque chose ?', 6, 0),
(9, 'Une pièce est probablement cassée : disque dur, processeur ou mémoire vive. Si vous savez lire l\'anglais, vous pourrez peut-être identifier cette pièce en déchiffrant le message qui s\'affiche. Mais à moins d\'être un as de l\'informatique, vous devrez consultez un réparateur.', 7, 1),
(10, 'Soit Windows est abîmé, soit votre disque dur est abîmé. Dans les deux cas, faites-vous aider par un as de l\'informatique ou un réparateur.', 8, 1),
(11, 'Votre ventilateur est probablement cassé, ce qui pousse votre ordinateur à la surchauffe en quelques secondes. A moins que ce soit votre carte graphique ou votre carte mère qui pose problème', 9, 1),
(12, 'Votre écran est peut-être cassé. Si votre ordinateur dispose d\'une prise pour écran, essayez de brancher un autre écran. Si cela ne change rien, c\'est probablement votre carte graphique qui pose problème. Allez voir un réparateur', 10, 1),
(13, 'Au démarrage, voyez-vous quelque chose d\'inhabituel ?', 11, 0),
(14, 'Votre disque dur-la mémoire centrale de votre ordinateur-est probablement en mauvaise santé. Si cela arrive fréquemment, il y a urgence. Surtout si vous détectez un petit cliquetis inhabituel. Faites une copie de sécurité de vos documents les plus précieux et allez tout de suite voir un réparateur pour remplacer votre disque dur.', 13, 1),
(15, 'Windows rencontre de petits problèmes de fiabilité. Un souci anodin s\'il arrive rarement. Est-ce le cas?', 14, 0),
(16, 'Alors ça n\'est pas inquiétant.', 23, 1),
(17, 'Votre ordinateur se bloque-t-il toujours quand vous utilisez le même logiciel?', 24, 0),
(18, 'Votre ordinateur est peut-être surchargé de programmes.\r\nSupprimez quelques logiciels et quelques documents.\r\n', 25, 1),
(19, 'Supprimez-le et redémarrez l\'ordinateur. S\'il vous est vraiment nécessaire, réinstallez-le. Le problème persiste-t-il?', 26, 0),
(20, 'Votre problème paraît difficile à résoudre. Consultez un réparateur ou un as de l\'informatique.', 27, 1),
(21, 'Nous espérons que cet outil de diagnostic vous a aidé.', 28, 1),
(22, 'Au démarrage, voyez-vous quelque chose d\'inhabituel ?', 11, 0),
(23, 'Votre disque dur-la mémoire centrale de votre ordinateur-est probablement en mauvaise santé. Si cela arrive fréquemment, il y a urgence. Surtout si vous détectez un petit cliquetis inhabituel. Faites une copie de sécurité de vos documents les plus précieux et allez tout de suite voir un réparateur pour remplacer votre disque dur.', 13, 1),
(24, 'Windows rencontre de petits problèmes de fiabilité. Un souci anodin s\'il arrive rarement. Est-ce le cas?', 14, 0),
(25, 'Alors ça n\'est pas inquiétant.', 23, 1),
(26, 'Votre ordinateur se bloque-t-il toujours quand vous utilisez le même logiciel?', 24, 0),
(27, 'Votre ordinateur est peut-être surchargé de programmes.\r\nSupprimez quelques logiciels et quelques documents.\r\n', 25, 1),
(28, 'Supprimez-le et redémarrez l\'ordinateur. S\'il vous est vraiment nécessaire, réinstallez-le. Le problème persiste-t-il?', 26, 0),
(29, 'Votre problème paraît difficile à résoudre. Consultez un réparateur ou un as de l\'informatique.', 27, 1),
(30, 'Nous espérons que cet outil de diagnostic vous a aidé.', 28, 1),
(31, 'Est-ce que ça arrive souvent quand il fait très chaud?', 12, 0),
(32, 'Votre ordinateur se bloque-t-il toujours quand vous utilisez le même logiciel?', 15, 0),
(33, 'Votre ordinateur est peut-être surchargé de programmes. Supprimez quelques logiciels et quelques documents.', 17, 1),
(34, 'Supprimez-le et redémarrez l\'ordinateur. S\'il vous est vraiment nécessaire, réinstallez-le. Le problème persiste-t-il?', 18, 0),
(35, 'Votre problème paraît difficile à résoudre. Consultez un réparateur ou un as de l\'informatique.', 19, 1),
(36, 'Nous espérons que cet outil de diagnostic vous a aidé.', 20, 1),
(37, 'Le processeur des ordinateurs n\'apprécie pas les pics de chaleur. C\'est la raison pour laquelle il est souvent équipé d\'un ventilateur. Si ce ventilateur s\'encrasse, il refroidit moins bien le processeur. Vérifiez donc que le ou les ventilateurs de votre ordinateur sont propres. Si ça n\'est pas le cas, ôtez la poussière qui les encombre, avec délicatesse. Vous avez de bonnes chances de résoudre le problème. Votre ordinateur fonctionne-t-il de nouveau normalement?', 16, 0),
(38, 'Votre ordinateur est peut-être surchargé de programmes. Supprimez quelques logiciels et quelques documents.', 21, 1),
(39, 'Nous espérons que cet outil de diagnostic vous a aidé.', 22, 1),
(40, 'Votre ordinateur est peut-être surchargé de programmes. Supprimez quelques logiciels et quelques documents.', 29, 1),
(41, 'Des logiciels invisibles tournent peut-être sur votre ordinateur. Faites-leur la chasse, que ce soient des logiciels espions ou publicitaires. Installez le nettoyeur AdwCleaner. Cliquez sur le bouton«Analyser» puis patientez. Cliquez ensuite sur le bouton «Nettoyer». Redémarrez votre ordinateur. Va-t-il mieux?', 30, 0),
(42, 'Nous espérons que cet outil de diagnostic vous a aidé.', 32, 1),
(43, 'Vous avez probablement attrapé un virus. Pour identifier ce virus, et pour le supprimer, reportez-vous à notre mode d\'emploi. Après l\'opération, votre ordinateur est-il revenu à la normale?', 33, 0),
(44, 'Vous n\'avez plus qu\'une alternative : réinstaller complètement Windows, ce qui effacera vos logiciels, qu\'il faudra réinstaller, et vos documents, qu\'il faudra recopier. La méthode est radicale, longue et difficile, mais redoutablement efficace. Nous vous recommandons de vous faire aider par un as de l\'informatique.', 34, 1),
(45, 'Certains virus sont particulièrement difficiles à éliminer. D\'autres ralentissent tellement l\'ordinateur qu\'on ne peut plus l\'utiliser. Seule solution : demander de l\'aide à un réparateur ou un as de l\'informatique.', 35, 1),
(46, 'Nous espérons que cet outil de diagnostic vous a aidé.', 36, 1),
(47, 'Vous avez probablement attrapé un virus. Pour identifier ce virus, et pour le supprimer, reportez-vous à notre mode d\'emploi. Après l\'opération, votre ordinateur est-il revenu à la normale?', 31, 0),
(48, 'Vous n\'avez plus qu\'une alternative : réinstaller complètement Windows, ce qui effacera vos logiciels, qu\'il faudra réinstaller, et vos documents, qu\'il faudra recopier. La méthode est radicale, longue et difficile, mais redoutablement efficace. Nous vous recommandons de vous faire aider par un as de l\'informatique.', 37, 1),
(49, 'Certains virus sont particulièrement difficiles à éliminer. D\'autres ralentissent tellement l\'ordinateur qu\'on ne peut plus l\'utiliser. Seule solution : demander de l\'aide à un réparateur ou un as de l\'informatique.', 38, 1),
(50, 'Nous espérons que cet outil de diagnostic vous a aidé.', 39, 1),
(51, 'Vous avez probablement attrapé un virus. Pour identifier ce virus, et pour le supprimer, reportez-vous à notre mode d\'emploi. Après l\'opération, votre ordinateur est-il revenu à la normale?', 40, 0),
(52, 'Vous n\'avez plus qu\'une alternative : réinstaller complètement Windows, ce qui effacera vos logiciels, qu\'il faudra réinstaller, et vos documents, qu\'il faudra recopier. La méthode est radicale, longue et difficile, mais redoutablement efficace. Nous vous recommandons de vous faire aider par un as de l\'informatique.', 42, 1),
(53, 'Certains virus sont particulièrement difficiles à éliminer. D\'autres ralentissent tellement l\'ordinateur qu\'on ne peut plus l\'utiliser. Seule solution : demander de l\'aide à un réparateur ou un as de l\'informatique.', 43, 1),
(54, 'Nous espérons que cet outil de diagnostic vous a aidé.', 44, 1),
(55, 'La pile qui alimente l\'horloge de votre ordinateur est à plat. Elle est enfouie dans les profondeurs de votre ordinateur. Faites-vous aider, ou consultez un réparateur.', 41, 1);

-- --------------------------------------------------------

--
-- Structure de la table `utilisateur`
--

CREATE TABLE `utilisateur` (
  `matricule` varchar(50) NOT NULL,
  `motdepasse` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `utilisateur`
--

INSERT INTO `utilisateur` (`matricule`, `motdepasse`) VALUES
('admin', '21232f297a57a5a743894a0e4a801fc3');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `réponses`
--
ALTER TABLE `réponses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idparent` (`idparent`);

--
-- Index pour la table `résultats`
--
ALTER TABLE `résultats`
  ADD PRIMARY KEY (`id`),
  ADD KEY `réponseid` (`réponseid`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `réponses`
--
ALTER TABLE `réponses`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT pour la table `résultats`
--
ALTER TABLE `résultats`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;



