<h1 class="titleInHeader"><?php echo B31; ?> <span
        class="level"> <?php echo BL_LVL . ' ' . $village->resarray['f' . $id]; ?></span></h1>

<div id="build" class="gid31">
    <div class="build_desc">
        <a href="#" onClick="return Travian.Game.iPopup(31,4);" class="build_logo">
            <img class="building big white g31" src="img/x.gif" alt="<?php echo B31; ?>"
                 title="<?php echo B31; ?>"/></a>
        <?php echo B31_DESC; ?></div>

    <table cellpadding="1" cellspacing="1" id="build_value">
        <tr>
            <th>
                <?php echo BL_CUR_DEFBON; ?>:
            </th>
            <td>
                <b><?php echo $bid31[$village->resarray['f' . $id]]['attri'] ? $bid31[$village->resarray['f' . $id]]['attri'] : '0'; ?>
                    %</b></td>
        </tr>
        <?php
            if (!$building->isMax($village->resarray['f' . $id . 't'], $id)) {
                $loopsame = $building->isCurrent($id) ? 1 : 0;
                $doublebuild = 0;
                if ($loopsame > 0 && $building->isLoop($id)) {
                    $doublebuild = 1;
                }
                $nli = ($loopsame > 0 ? 2 : 1) + $doublebuild;
                $bindicate = $building->canBuild($id, $village->resarray['f' . $id . 't']);
                $ll = $nli;
                if ($bindicate == 10 || $bindicate == 1) $ll -= 1;
                for ($nc = 1; $nc <= $ll; $nc++) {
                    ?>
                    <tr <?php if ($nc < $nli) echo 'style="color:#F88C1F;"'; ?>>
                        <th><?php echo BL_NEXT_DEFBON . ' ' . ($village->resarray['f' . $id] + $nc); ?>:</th>
                        <td><b><?php echo $bid31[$village->resarray['f' . $id] + $nc]['attri']; ?>%</b></td>
                    </tr>
                <?php
                }
            }
        ?>
    </table>
    <?php
        include("upgrade.tpl");
    ?>
    </p>
</div>